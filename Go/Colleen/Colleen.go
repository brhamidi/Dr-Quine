package main
import "fmt"
/*
	outside
*/
func sum(a int, b int) int {return a + b;}
func main(){/*inside*/sum(21,21);const s="package main%cimport %cfmt%c%c%c%c%c%coutside%c%c%c%cfunc sum(a int, b int) int {return a + b;}%cfunc main(){/*inside*/sum(21,21);const s=%c%s%c;fmt.Printf(s,10,34,34,10,47,42,10,9,10,42,47,10,10,34,s,34,10);}%c";fmt.Printf(s,10,34,34,10,47,42,10,9,10,42,47,10,10,34,s,34,10);}
