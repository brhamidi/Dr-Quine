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
void f(){n[6]=48+i;prog[8]=48+i;char *s="#include <unistd.h>%c#include <stdio.h>%c#include <fcntl.h>%c#include <stdlib.h>%c#include <string.h>%cint i = %c;%cchar n[]=%cSully_X.c%c;%cchar prog[]=%c./Sully_X%c;%cchar *const test[]={%cls%c, %c-l%c, NULL};%cchar compile[50] = %cgcc -Werror -Wextra -Wall -o %c;%cvoid e(){strcat(compile, prog + 2);strcat(compile, %c %c);strcat(compile, n);system(compile);system(prog);};%cvoid f(){n[6]=48+i;prog[8]=48+i;char *s=%c%s%c;int fd=open(n,O_CREAT|O_RDWR,S_IRUSR|S_IRGRP|S_IROTH);dprintf(fd,s,10,10,10,10,10,48+i-1,10,34,34,10,34,34,10,34,34,34,34,10,34,34,10,34,34,10,34,s,34,10,10);e();close(fd);}%cint main(){if(i)f();}%c";int fd=open(n,O_CREAT|O_RDWR,S_IRUSR|S_IRGRP|S_IROTH);dprintf(fd,s,10,10,10,10,10,48+i-1,10,34,34,10,34,34,10,34,34,34,34,10,34,34,10,34,34,10,34,s,34,10,10);e();close(fd);}
int main(){if(i)f();}
