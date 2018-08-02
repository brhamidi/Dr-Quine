package main
import (
	"os"
	"fmt"
)
/*
	Rust
*/
const n="Grace_kid.go"
const p=os.O_RDWR|os.O_CREATE;
const m os.FileMode=0755;
func main(){s:="package main%cimport (%c%c%cos%c%c%c%cfmt%c%c)%c/*%c%cRust%c*/%cconst n=%cGrace_kid.go%c%cconst p=os.O_RDWR|os.O_CREATE;%cconst m os.FileMode=0755;%cfunc main(){s:=%c%s%c;r:=fmt.Sprintf(s,10,10,9,34,34,10,9,34,34,10,10,10,9,10,10,34,34,10,10,10,34,s,34,10);f,_ := os.OpenFile(n, p, m);f.WriteString(r);f.Close();}%c";r:=fmt.Sprintf(s,10,10,9,34,34,10,9,34,34,10,10,10,9,10,10,34,34,10,10,10,34,s,34,10);f,_ := os.OpenFile(n, p, m);f.WriteString(r);f.Close();}
