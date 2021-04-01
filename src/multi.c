#include "../include/multi.h"
#include "utils.h"

struct Database *shared_memory(int size){
    struct Database *addr = mmap(NULL, getpagesize(), PROT_READ | PROT_WRITE,
                             MAP_SHARED | MAP_ANONYMOUS, -1, 0);
    addr->data = mmap(NULL, sizeof(struct Report*)*size, PROT_READ | PROT_WRITE,
                      MAP_SHARED | MAP_ANONYMOUS, -1, 0);
    for (int i = 0; i < size; i++)
        addr->data[i] = mmap(NULL, sizeof(struct Report), PROT_READ | PROT_WRITE,
                          MAP_SHARED | MAP_ANONYMOUS, -1, 0);
    if (addr == NULL)
        return NULL;
    return addr;
}

int create_processes (int processes_number){
    int result = -1;
    for (int i = 0; i < processes_number; ++i){
        int pid = fork();
        if (pid == 0)
            return ++result;
        ++result;
    }
    return -2;
}

struct Database* count_avg_salary_multi (struct Database *database, struct Database *workers_on_pos, char *current_pos) {
    if (!database) {
        return NULL;
    }
    struct Database *report = create_database(sizeof(struct Report *));
    struct Report* salary_report;
    unsigned char min = 0;
    unsigned char max = 0;
    unsigned char cur_exp = 0;
    int workers_count = 0;
    unsigned int sum_salary = 0;
    float avg_salary = 0;
    struct Worker *current_staff = NULL;
        max = find_max_exp(workers_on_pos);
        min = find_min_exp(workers_on_pos);
        for (int k = min; k <= max; k++) {
            for (int j = 0; j < workers_on_pos->size; j++) {
                current_staff = get_record(workers_on_pos, j);
                if (current_staff->work_experience == k) {
                    sum_salary += current_staff->salary;
                    workers_count++;
                }
                cur_exp = k;
            }
            if (workers_count != 0) {
                avg_salary = (float)sum_salary / (float)workers_count;
                salary_report = create_report(current_pos, avg_salary, cur_exp);
                add_to_database(salary_report, report);
                sum_salary = 0;
                workers_count = 0;
            }
        }
    return report;
}

struct Database *multi_process_work(struct Database *database){
    struct Database *position_list = create_database(sizeof(char *));
    struct Database *workers_on_pos;
    int pos_count = 0;
    for (int i = 0; i < database->size; i++) {
        check_position(database->data[i], position_list);
    }
    pos_count = position_list->size;
    struct Database *shared_database = shared_memory(database->size);
    int processes_number = pos_count;
    int *processes_names = (int*)malloc(processes_number * sizeof(int));
    if (processes_names == NULL)
        return NULL;
    int pid_num = create_processes(processes_number);
    if (pid_num != -2){
        char *position = position_list->data[pid_num];
        workers_on_pos = workers_on_position(database, position);
        struct Database *crit_list = count_avg_salary_multi(database, workers_on_pos, position);
        add_to_shared_mem_databse(crit_list, shared_database);
        exit(0);
    }
    free_positions(position_list);
    for (int num = 0; num != processes_number; ++num ) {
       while (waitpid(processes_names[num], NULL, 0) > 0 ) {
       }
    }
    free(processes_names);
    return shared_database;
};
