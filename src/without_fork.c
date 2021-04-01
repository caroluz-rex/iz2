#include "../include/without_fork.h"
#include "../include/utils.h"

struct Database* single_process_work (struct Database *database) {
    if (!database) {
        return NULL;
    }
    struct Database *workers_on_pos;
    struct Database *position_list = create_database(sizeof(char *));
    struct Database *report = create_database(sizeof(struct Report *));
    struct Report* salary_report;
    for (int i = 0; i < database->size; i++) {
        check_position(database->data[i], position_list);
    }
    unsigned char min = 0;
    unsigned char max = 0;
    unsigned char cur_exp = 0;
    char *current_pos = "";
    int workers_count = 0;
    unsigned int sum_salary = 0;
    float avg_salary = 0;
    struct Worker *current_staff = NULL;
    for (int t = 0; t < position_list->size; t++) {
        current_pos = get_record(position_list, t);
        workers_on_pos = workers_on_position(database, current_pos);
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
                salary_report = create_report(current_pos, avg_salary, cur_exp);
                avg_salary = (float)sum_salary / (float)workers_count;
                add_to_database(salary_report, report);
                sum_salary = 0;
                workers_count = 0;
            }
        }
    }
    return report;
}
