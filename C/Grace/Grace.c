#include <fcntl.h>
#include <stdio.h>
#include <strings.h>
#include <unistd.h>
#define N "Grace_kid.c"
/*
  oo
*/
#define F (O_CREAT | O_RDWR)
#define FT(x)int main(){char *s="#include <fcntl.h>%c#include <stdio.h>%c#include <strings.h>%c#include <unistd.h>%c#define N %cGrace_kid.c%c%c/*%c  oo%c*/%c#define F (O_CREAT | O_RDWR)%c#define FT(x)int main(){char *s=%c%s%c;int fd=open(x, F,S_IRUSR|S_IRGRP|S_IROTH);dprintf(fd,s,10,10,10,10,34,34,10,10,10,10,10,34,s,34,10,10);close(fd);}%cFT(N)%c";int fd=open(x, F,S_IRUSR|S_IRGRP|S_IROTH);dprintf(fd,s,10,10,10,10,34,34,10,10,10,10,10,34,s,34,10,10);close(fd);}
FT(N)
