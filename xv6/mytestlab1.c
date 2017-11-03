#include "types.h"
#include "user.h"

int main(int argc, char *argv[])
{
	
	int exitWait(void);
	int waitPid(void);
	int PScheduler(void);


  printf(1, "\n CUSTOM CODE This program tests the correctness of my lab#1\n");
  printf(1, "\n Lab done by Elijah Marchese and Jessica Gonzalez:\n");
  
  if (atoi(argv[1]) == 1)
	exitWait();
  else if (atoi(argv[1]) == 2)
	waitPid();
  else if (atoi(argv[1]) == 3)
	PScheduler();
  else 
   printf(1, "\ntype \"lab1 1\" to test exit and wait, \"lab1 2\" to test waitpid and \"lab1 3\" to test the priority scheduler \n");
  
    // End of test
	 exit(0);
 }
  
  
int exitWait(void) {
	  int pid, ret_pid, exit_status, pid2;
       int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Step 1: testing exit(int status) and wait(int* status):\n");

  for (i = 0; i < 2; i++) {
    pid = fork();
    if (pid == 0) { // only the child executed this code
      pid2 = fork();
      if (pid2 == 0) { //child
        printf(1, "\n1) This is child child with PID# %d and I will exit with status %d\n", getpid(), 0);
        exit(0);
      }
      else if (pid2 > 0) { //child
        ret_pid = wait(&exit_status);
        printf(1, "\n2) This is the child parent: child child with PID# %d has exited with status %d\n", ret_pid, exit_status);
      }
      else {
        printf(2, "\nError using fork\n");
        exit(-1);
      }
      if (i == 0)
      {
        printf(1, "\n3) This is child with PID# %d and I will exit with status %d\n", getpid(), 0);
        exit(0);
      }
      else
      {
    	  printf(1, "\n3) This is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
        exit(-1);
      } 
    } 
    else if (pid > 0) { // only the parent exeecutes this code
      ret_pid = wait(&exit_status);
      printf(1, "\n4) This is the parent: child with PID# %d has exited with status %d\n", ret_pid, exit_status);
    } 
    else  // something went wrong with fork system call
    {  
    	 printf(2, "\nError using fork\n");
       exit(-1);
    }
  }
  return 0;
}

int waitPid(void){
	
  int ret_pid, exit_status;
  int pid_a[5]={0, 0, 0, 0, 0};
 // use this part to test wait(int pid, int* status, int options)

 printf(1, "\n  Step 2: testing waitpid(int pid, int* status, int options):\n");


    pid_a[0] = fork();
	  
    if (pid_a[0] == 0) { // only the child executed this code  
      pid_a[1] = fork();
      if (pid_a[1] == 0) { //child executes this
        printf(1, "\n1) Child with PID# %d | exit status %d\n", getpid(), 0);
        exit(0);
      }  
      else if (pid_a[1] > 0) { //child executes this
        printf(1, "\n2) WAITING Parent with child's PID# %d", getpid(), 0);
        ret_pid = waitpid(pid_a[1], &exit_status, 0);
        printf(1, "\n2) This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
      }
       else {
        printf(1, "ERROR with fork()... exiting");
        exit(-1);
        }   
      printf(1, "\n3)Child with PID# %d | exit status %d\n", getpid(), 0);
      exit(0);
    }
    else if (pid_a[0] > 0) {
      printf(1, "\n4) WAITING Parent with child's PID# %d", getpid(), 0);
      ret_pid = waitpid(pid_a[1], &exit_status, 0);
      printf(1, "\n4) This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
    }
    else {
        printf(1, "ERROR with fork()... exiting");
        exit(-1);
    }   
 
      
      return 0;
  }
     
int PScheduler(void){

    // use this part to test the priority scheduler. Assuming that the priorities range between range between 0 to 63
    // 0 is the highest priority. All processes have a default priority of 20 

  int pid, ret_pid, exit_status;
  int i,j,k;

    printf(1, "\n  Step 2: testing the priority scheduler and setpriority(int priority)) systema call:\n");
    printf(1, "\n  Step 2: Assuming that the priorities range between range between 0 to 63\n");
    printf(1, "\n  Step 2: 0 is the highest priority. All processes have a default priority of 20\n");
    printf(1, "\n  Step 2: The parent processes will switch to priority 0\n");
         changepriority(0);
    for (i = 0; i <  3; i++) {
        pid = fork();
        if (pid > 0 ) {
                continue;}
        else if ( pid == 0) {
                printf(1, "\n Hello! this is child# %d and I will change my priority to %d \n",getpid(),60-10*i);
                changepriority(60-10*i);
                for (j=0;j<50000;j++) {
                        for(k=0;k<20000;k++) {
                                asm("nop"); }}
                printf(1, "\n child# %d with priority %d has finished! \n",getpid(),60-10*i);
                exit(0);
        }
        else {
                        printf(2," \n Error \n");
                        exit(-1);
        }
        }

        if(pid > 0) {
                for (i = 0; i <  3; i++) {
                        ret_pid = wait(&exit_status);
                        printf(1,"\n This is the parent: child with PID# %d has finished with status %d \n",ret_pid,exit_status);
                        }
                     printf(1,"\n if processes with highest priority finished first then its correct \n");
	} 
	return 0;
}
