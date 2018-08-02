package main
import (
	"fmt"
	"os"
	"os/exec"
)
const i=5;
var filename="Sully";
var n=fmt.Sprintf("%s_%c.go", filename,48+i);
var bin=fmt.Sprintf("./Sully_%c", 48+i);
var file,_ = os.OpenFile(n,os.O_RDWR|os.O_CREATE,0755);
func e(){cmd := exec.Command("go", "build", "-o", fmt.Sprintf("%s_%c",filename,48+i),n);cmd.Run();cmd=exec.Command(bin);cmd.Run();}
func f(){s:="package main%cimport (%c%c%cfmt%c%c%c%cos%c%c%c%cos/exec%c%c)%cconst i=%c;%cvar filename=%cSully%c;%cvar n=fmt.Sprintf(%c%%s_%%c.go%c, filename,48+i);%cvar bin=fmt.Sprintf(%c./Sully_%%c%c, 48+i);%cvar file,_ = os.OpenFile(n,os.O_RDWR|os.O_CREATE,0755);%cfunc e(){cmd := exec.Command(%cgo%c, %cbuild%c, %c-o%c, fmt.Sprintf(%c%%s_%%c%c,filename,48+i),n);cmd.Run();cmd=exec.Command(bin);cmd.Run();}%cfunc f(){s:=%c%s%c;file.WriteString(fmt.Sprintf(s,10,10,9,34,34,10,9,34,34,10,9,34,34,10,10,48+i-1,10,34,34,10,34,34,10,34,34,10,10,34,34,34,34,34,34,34,34,10,34,s,34,10,10));file.Close();};%cfunc main(){if(i!=0){f();e();}}%c";file.WriteString(fmt.Sprintf(s,10,10,9,34,34,10,9,34,34,10,9,34,34,10,10,48+i-1,10,34,34,10,34,34,10,34,34,10,10,34,34,34,34,34,34,34,34,10,34,s,34,10,10));file.Close();};
func main(){if(i!=0){f();e();}}
