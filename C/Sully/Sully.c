#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
int i=5;
char *s="#include <unistd.h>%c#include <stdio.h>%c#include <fcntl.h>%c#include <stdlib.h>%cint i=%d;%cchar *s=%c%s%c;%cint main(){if(!i)return 0;%cchar name[99]=%cSully_%%d.c%c;sprintf(name,name,i);int fd=open(name,O_CREAT|O_RDWR|O_TRUNC,0654);dprintf(fd,s,10,10,10,10,i,10,34,s,34,10,10,34,34,34,34,10,34,34,34,34,10);char cmd[99]=%cgcc -o Sully_%%d Sully_%%d.c%c;sprintf(cmd,cmd,i,i);close(fd);system(cmd);%cchar name1[99]=%cSully_%%d.c%c;sprintf(name1,name1,--i);fd=open(name1,O_CREAT|O_RDWR|O_TRUNC,0654);dprintf(fd,s,10,10,10,10,i,10,34,s,34,10,10,34,34,34,34,10,34,34,34,34,10);char cmd1[99]=%cgcc -o Sully_%%d Sully_%%d.c && ./Sully_%%d%c;sprintf(cmd1,cmd1,i,i,i);close(fd);system(cmd1);}%c";
int main(){if(!i)return 0;
char name[99]="Sully_%d.c";sprintf(name,name,i);int fd=open(name,O_CREAT|O_RDWR|O_TRUNC,0654);dprintf(fd,s,10,10,10,10,i,10,34,s,34,10,10,34,34,34,34,10,34,34,34,34,10);char cmd[99]="gcc -o Sully_%d Sully_%d.c";sprintf(cmd,cmd,i,i);close(fd);system(cmd);
char name1[99]="Sully_%d.c";sprintf(name1,name1,--i);fd=open(name1,O_CREAT|O_RDWR|O_TRUNC,0654);dprintf(fd,s,10,10,10,10,i,10,34,s,34,10,10,34,34,34,34,10,34,34,34,34,10);char cmd1[99]="gcc -o Sully_%d Sully_%d.c && ./Sully_%d";sprintf(cmd1,cmd1,i,i,i);close(fd);system(cmd1);}
