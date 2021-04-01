#include "utils.h"

struct Database *create_database(int size_of_data) {
    struct Database *database = NULL;
    database = (struct Database*)malloc(sizeof(struct Database));
    if (database == NULL)
        return NULL;
    database->capacity = CAPACITY_OF_DATABASE;
    database->size = 0;
    database->element_size = size_of_data;
    database->data = (void **)malloc(CAPACITY_OF_DATABASE*sizeof(void*));
    if (!database->data)
        return NULL;
    return database;
};

struct Database *load_base_from_file(FILE *data_file){
    char string_helper_ptr[MAX_STRING_SIZE] = "";
    struct Database *database = create_database(sizeof(struct Worker));
    while (!feof(data_file)){
        struct Worker *new_worker = malloc(sizeof(struct Worker));
        if (!new_worker)
            return NULL;
        new_worker->name = scan_to_pointer(data_file, string_helper_ptr);
        new_worker->surname = scan_to_pointer(data_file, string_helper_ptr);
        new_worker->sex = scan_to_value(data_file, string_helper_ptr);
        new_worker->age = scan_to_value(data_file, string_helper_ptr);
        new_worker->salary = scan_to_int(data_file, string_helper_ptr);
        new_worker->position = scan_to_pointer(data_file, string_helper_ptr);
        new_worker->work_experience = scan_to_value(data_file, string_helper_ptr);
        database = add_to_database(new_worker, database);
    }
    return database;
};

void free_worker(struct Database *database){
    for (int i=0; i < database->size; ++i){
        struct Worker *workers = get_record(database, i);
        free(workers->name);
        free(workers->surname);
        free(workers->position);
        free(workers);
        workers = NULL;
    }
    free(database->data);
    free(database);
};

void free_report(struct Database *database){
    for (int i=0; i < database->size; ++i){
        struct Report *report_note = get_record(database, i);
        free(report_note->position);
        report_note = NULL;
    }
    free(database->data);
    free(database);
}

void free_positions (struct Database *database) {
    free(database->data);
    free(database);
}

char *scan_to_pointer(FILE *file_inp, char* buf){
    if (!fscanf(file_inp, "%s", buf))
        return NULL;
    size_t size = strlen(buf);
    char* struct_el = (char*)calloc(size + 1, sizeof(char));
    if (!buf){
        return NULL;
    }
    strncpy(struct_el, buf, size);
    return struct_el;
};

char scan_to_value(FILE *file_inp, char* buf){
    if (!fscanf(file_inp, "%s", buf))
        return 0;
    if (strcmp(buf, MALE) != 0 && strcmp(buf, FEMALE) != 0){
        size_t size = strlen(buf);
        int i = 0;
        int number = 0;
        while (i < size){
            number = 10 * number + (buf[i] - 48);
            ++i;
        }
        *buf = (char)number;
    }
    return *buf;
};

long scan_to_int(FILE *file_inp, char* buf){
    char *end;
    if (!fscanf(file_inp, "%s", buf))
        return 0;
    return strtol(buf, &end, 10);
};

struct Database *add_to_database(void *data, struct Database *database){
    if (!data || !database)
        return NULL;
    if (database->size >= database->capacity)
        database_resize(database, 2 * database->capacity);
    database->data[database->size] = data;
    database->size++;
    return database;
};

void database_resize(struct Database *database, int new_capacity){
    database->capacity = new_capacity;
    database->data = realloc(database->data, new_capacity * sizeof(void *));
}

void* get_record(struct Database *database, int index){
    if (index < 0 || index > database->size - 1 || database->size <= 0)
        return NULL;
    return database->data[index];
}

int check_position(struct Worker *worker, struct Database *database){
    for (int i = 0; i < database->size; ++i){
        char *curr_position = get_record(database, i);
        if (strcmp(worker->position, curr_position) == 0)
            return 0;
    }
    add_to_database(worker->position, database);
    return 1;
}

int get_all_positions (struct Worker *worker, struct Database *database, char* position) {
    if (strcmp(worker->position, position) == 0) {
        add_to_database(worker, database);
    }
    return 1;
}

struct Database* add_to_shared_mem_databse(struct Database *generated_base, struct Database *shared_base){
    shared_base->element_size = 2 * generated_base->element_size;
    for (int i = 0; i < generated_base->size; i++) {
        struct Report *worker = get_record(generated_base, i);
        memcpy(shared_base->data[shared_base->size], worker, shared_base->element_size);
        shared_base->size++;
    }
    return shared_base;

}

struct Report* create_report (char* position, float avg_salary, unsigned char exp) {
    struct Report* new_note = (struct Report*)malloc(sizeof(struct Report));
    if (new_note == NULL) {
        return NULL;
    }
    new_note->experience = exp;
    new_note->position = position;
    new_note->avg_salary = avg_salary;
    return new_note;
}

struct Database* workers_on_position(struct Database *database, char* position){
    struct Database *workers_pos_database = create_database(sizeof(struct Worker));
    for (int j = 0; j < database->size; j++) {
        struct Worker *curr_worker = get_record(database, j);
        get_all_positions(curr_worker, workers_pos_database, position);
    }
    return workers_pos_database;
};

unsigned int find_max_exp(struct Database *database){
    unsigned int max=0;
    struct Worker *current_worker;
    for (int i=0; i < database->size; i++) {
        current_worker = get_record(database, i);
        if (max<=current_worker->work_experience) {
            max=current_worker->work_experience;
        }
    }
    return max;
};

unsigned int find_min_exp(struct Database *database){
    unsigned int min=UNSIGNED_INT;
    struct Worker *current_worker;
    for (int i=0; i < database->size; i++) {
        current_worker = get_record(database, i);
        if (min>current_worker->work_experience) {
            min=current_worker->work_experience;
        }
    }
    return min;
};
