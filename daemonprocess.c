#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/wait.h>
#include<sys/stat.h>
#include<fcntl.h>

void create_daemon() {
	pid_t pid = fork();
	
	if(pid > 0) {
		exit(0);
	}
	else if(pid==0){
		if(setsid() < 0) exit(1);
		chdir("/");
		sigmask(0);
		close(STDIN_FILENO);
		close(STDOUT_FILENO);
		close(STDERR_FILENO);
		
		while(1) {
			int fd = open("/tmp/daemon_log.txt",O_RDWR | O_CREAT | O_APPEND, 0600);
			if(fd != -1){
				dprintf(fd,"Daemon is running...\n");
				close(fd);
			}
			sleep(10);
		}
	}
}

int main() {
	create_daemon();
	return 0;
}
