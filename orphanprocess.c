#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/wait.h>

int main() {
	int pid = fork();
	if(pid > 0){
		printf("in parent process \n");
	}
	else if(pid == 0){
		sleep(30);
		printf("in child process \n");
	}
	return 0;
}
