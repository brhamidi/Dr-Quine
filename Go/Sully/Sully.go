package main
import (
	"fmt"
	"os"
	"os/exec"
)
const i=5;
var n=fmt.Sprintf("Sully_%c.go", 48+i);
var file,_ = os.OpenFile(n,os.O_RDWR|os.O_CREATE,0755);
var compile = []string{"go", "run", n};
func e(){}
func f(){s:="package main%cimport %cfmt%c%cfunc main(){fmt.Printf(%cGandalf :)%c);}%c";file.WriteString(fmt.Sprintf(s,10,34,34,10,34,34,10));file.Close();};
func main(){if(i!=0){f();e();}}
