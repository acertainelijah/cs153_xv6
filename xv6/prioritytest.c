#include "param.h"
#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"
#include "fcntl.h"
#include "syscall.h"
#include "traps.h"
#include "memlayout.h"

int main(int argc, char ** argv){
	int	pid1=0;
	//int	i=0;
	int	pid2=0;
	int x=0;
	int y=0;
	int a=0;
	//int	pid3=0;
	
	int status;
	a = getpid();
	pid1=fork();
	if(	pid1	!=		0)	{
		pid2 =fork();
		pid2 =fork();
		pid2 =fork();
		x = getpid();
		y = getpriority();
		printf(1,"wait [%d] and pri [%d]\n",	x, y);
		if (pid2 != 0)
		{
			a = changepriority(10);
			printf(1,"value of a = [%d]", a);
		}
		
		// y = getpri();
		// printf(1,"process [%d] new pri [%d]\n",	x, y);
		
		waitpid(pid1, &status, 0);
		y = getpriority();
		printf(1,"finnally [%d] and pri [%d]\n",	x, y);
		
		
	}
	else {
		sleep(1000);
		x = getpid();
		printf(1,"first child[%d]\n", x	);
		
	}
	x = getpid();
	//printf(1,"test case exit[%d]\n", x	);
	exit(0);
	return 0;
}


// first child [5]
// finally [6]
// finally [7]
// finally [8]
// finally [9]
// finally [10]
// finally [11]
// finally [12]
// zombie!
// zombie!
// finally [4]
// zombie!
// zombie!
// zombie!
// zombie!
// zombie!




