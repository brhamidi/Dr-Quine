#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
int i = 5;
char n[]="Sully_X.c";
char prog[]="Sully_X";
char const *a[]={"gcc","-Werror","-Wextra","-Wall","n","-o", prog};
char const *b[]={prog, prog};
void e(){
	if (fork() == 0) execve(a[0],(char*const*)a,NULL);
	else
		if (fork() == 0) execve(b[0], (char*const*)b, NULL);
}
void f(){n[6]=48+i;prog[6]=48+i;/*char *s=""*/;int fd=open(n,O_CREAT|O_RDWR,S_IRUSR|S_IRGRP|S_IROTH);dprintf(fd,"int main(){return (0);}");e();close(fd);}
int main(){if(i)f();}
