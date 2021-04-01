#ifndef DZ2_UTILS_H
#define DZ2_UTILS_H

#define CAPACITY_OF_DATABASE 10
#define MAX_STRING_SIZE 20
#define UNSIGNED_INT 65536
#define MALE "m"
#define FEMALE "f"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

struct Worker{
    char* position;
    char* name;
    char* surname;
    unsigned char age;
    unsigned char work_experience;
    char sex;
    unsigned int salary;
};


struct Database{
    void** data;
    int size;
    int capacity;
    size_t element_size;
};

struct Report {
    char* position;
    unsigned char experience;
    float avg_salary;
};

struct Database *create_database(int size_of_data);
struct Database *add_to_database(void *data, struct Database *database);
struct Database *load_base_from_file(FILE *data_file);
void database_resize(struct Database *database, int new_capacity);
void* get_record(struct Database *database, int index);
int check_position(struct Worker *worker, struct Database *list);
char *scan_to_pointer(FILE *file_inp, char* buf);
char scan_to_value(FILE *file_inp, char* buf);
long scan_to_int(FILE *file_inp, char* buf);
int get_all_positions (struct Worker *staff, struct Database *database, char* position);
struct Database* add_to_shared_mem_databse(struct Database *generated_base, struct Database *shared_base);
struct Report* create_report (char* position, float avg_salary, unsigned char exp);
struct Database* workers_on_position(struct Database *database, char* position);
unsigned int find_max_exp(struct Database *database);
unsigned int find_min_exp(struct Database *database);
void free_worker(struct Database *database);
void free_positions (struct Database *database);
void free_report(struct Database *database);

#endif //IZ2_UTILS_H
