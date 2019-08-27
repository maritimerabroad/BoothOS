#include <stdio.h>

#include <kernel/tty.h>

void kernel_main(void) {
	terminal_initialize();
	printf("Welcome to BoothOS\n");
	printf("Version 0.0.1\n");
	printf("\n");
	printf("BoothOS is extremely early alpha software\n");
	printf("So things WILL be broken..\n");
	printf("\n");
	printf("\n");
	printf("> ");
}
