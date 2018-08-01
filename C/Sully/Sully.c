#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <string.h>
int i = 5;
char n[]="Sully_X.c";
char prog[]="./Sully_X";
char *const test[]={"ls", "-l", NULL};
char compile[50] = "gcc -Werror -Wextra -Wall -o ";
void e(){strcat(compile, prog + 2);strcat(compile, " ");strcat(compile, n);system(compile);system(prog);};
void f(){n[6]=48+i;prog[8]=48+i;/*char *s=""*/;int fd=open(n,O_CREAT|O_RDWR,S_IRUSR|S_IRGRP|S_IROTH);dprintf(fd,"#include<stdio.h>\nint main(){printf(\"Hello World\");}");e();close(fd);}
int main(){if(i)f();}
