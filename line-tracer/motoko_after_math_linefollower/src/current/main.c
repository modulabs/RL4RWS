#include "os/suzuha_os.h"
#include "usr/usr_main.h"


#define MAIN_THREAD_STACK_SIZE	          128
thread_stack_t main_thread_stack[MAIN_THREAD_STACK_SIZE];


int main(void)
{
	lib_low_level_init();
	lib_os_init();

	create_thread(main_thread, main_thread_stack, sizeof(main_thread_stack), PRIORITY_MAX);
	kernel_start();

	return 0;
}
