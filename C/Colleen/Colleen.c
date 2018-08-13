#include <stdio.h>
/*
  comment
*/
void ft(void){};
int main(void){ft();
/*
  comment
*/
char *s="#include <stdio.h>%c/*%c  comment%c*/%cvoid ft(void){};%cint main(void){ft();%c/*%c  comment%c*/%cchar *s=%c%s%c;printf(s,10,10,10,10,10,10,10,10,10,34,s,34,10);}%c";printf(s,10,10,10,10,10,10,10,10,10,34,s,34,10);}
