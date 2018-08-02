package main
import (
	"os"
)
/*
	Rust
*/
const n="Grace_kid.go"
const p=os.O_RDWR|os.O_CREATE;
const m os.FileMode=0755;
func main(){f,_ := os.OpenFile(n, p, m);f.WriteString("fleur de la cours");f.Close();}
