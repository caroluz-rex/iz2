#ifndef DZ2_WITH_FORK_H
#define DZ2_WITH_FORK_H

#include <sys/mman.h>
#include <sys/sysinfo.h>
#include <sys/wait.h>
#include <unistd.h>

struct Database *multi_process_work(struct Database *database);

#endif //DZ2_WITH_FORK_H
