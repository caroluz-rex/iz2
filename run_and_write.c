#include "header.h"

struct Employee* write_employees(int n, int max_years, struct Employee *emp) {
    /// по очереди заполняем данные о сотрудниках
    int salary, pos_id, stage, age;
    char *name[15], *surname[16];
    for (int i = 0; i < n; ++i) {
        printf("-------filling info about %d's employee-------\n", i+1);

        printf("what's %d's employee's salary?\n", i+1);
        scanf("%d", &salary);
        if (salary < 0) {
            emp[i].salary = 0;
        } else {
            emp[i].salary = salary;
        }

        printf("what's his position id?\n");
        printf("0 - novice\n1 - junior\n2 - middle\n3 - senior\n4 - teamlead\n5 - boss\n");
        scanf("%d", &pos_id);
        if ((pos_id >= 0) && (pos_id <= 5)) {
            emp[i].position_id = pos_id;
        } else {
            emp[i].position_id = 0;
        }

        printf("how many years is he working here?\n");
        scanf("%d", &stage);
        if (stage > max_years) {
            emp[i].work_stage = max_years;
        } else if (stage < 0) {
            emp[i].work_stage = 0;
        } else {
            emp[i].work_stage = stage;
        }

        printf("what's his age?\n");
        scanf("%d", &age);
        if (age < 18) {
            emp[i].age = 18;
        } else {
            emp[i].age = age;
        }

        printf("what's his name?\n");
        scanf("%15s", &name);
        snprintf(emp[i].name, sizeof(emp[i].name), "%s", name);

        printf("what's his surname?\n");
        scanf("%16s", &surname);
        snprintf(emp[i].name, sizeof(emp[i].surname), "%s", surname);
    }
    return emp;
}

int run_app() {
    int n = 0;
    int max_years = 0;

    printf("Сколько сотрудников на предприятии?\n");
    scanf("%d", &n);
    printf("Сколько лет существует предприятие?\n");
    scanf("%d", &max_years);

    struct Employee *emp = (struct Employee*)malloc(sizeof(struct Employee)*n);
    emp = write_employees(n, max_years, emp);

    printf("wanna calc fast? (no - 0, yes - anything else)");
    int many_processes;
    scanf("%d", &many_processes);
    if (many_processes != 0) {
        working_with_statistics_in_many_proc(emp, max_years, n);
    } else {
        working_with_statistics_in_one_process(emp, max_years, n);
    }
    free(emp);
    return 0;
}
