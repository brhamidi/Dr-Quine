#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
int i = 5;
char n[] = "Sully_X.c";
char const *a[]={""};
void e(){}
void f(){n[6]=48+i;char *s="";int fd=open(n,O_CREAT|O_RDWR,S_IRUSR|S_IRGRP|S_IROTH);e();close(fd);}
int main(){if(i)f();}
