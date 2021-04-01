#include <stdio.h>
#include <time.h>
#include "without_fork.h"
#include "with_fork.h"
#include "utils.h"
#include <time.h>
#include <sys/time.h>

int main() {
    FILE* input_file = fopen("../database.txt", "r+");
    if (!input_file){
        return EXIT_FAILURE;
    }
    struct Database *database_file = load_base_from_file(input_file);
    fclose(input_file);

    struct  timeval start;
    gettimeofday(&start, NULL);

    struct Database *multiprocess_base = multi_process_work(database_file);
    struct  timeval end;
    gettimeofday(&end, NULL);
    long time = (end.tv_sec - start.tv_sec) * 1000 + (end.tv_usec - start.tv_usec) / 1000;
    printf("%ld ms for multi-process work\n", time);

    gettimeofday(&start, NULL);
    struct Database *single_process_base = single_process_work(database_file);
    gettimeofday(&end, NULL);
    time = (end.tv_sec - start.tv_sec) * 1000 + (end.tv_usec - start.tv_usec) / 1000;
    printf("%ld ms for single-process work\n", time);

    free_worker(database_file);
}
