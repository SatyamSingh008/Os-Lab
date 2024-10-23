#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<sys/types.h>

int main(){
	pid_t pid;
	pid = fork();
	
	switch(pid){
		case-1:
			perror("Failed to fork");
			exit(1);
		
		case 0:
			printf("Child Process:\n");
			printf("PID: %d\n",getpid());
			printf("PPID: %d\n",getppid());
			break;
		
		default:
			printf("Parent Process:\n");
			printf("PID: %d\n",getpid());
			printf("PPID: %d\n",getppid());
			break;
	}
	return 0;
}
