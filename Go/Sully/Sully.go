package main
import (
"fmt"
"os"
"os/exec"
)
var i=5;
var s ="package main%cimport (%c%cfmt%c%c%cos%c%c%cos/exec%c%c)%cvar i=%d;%cvar s =%c%s%c;%cfunc compile(name,output string){var cmd=exec.Command(%cgo%c,%cbuild%c,%c-o%c,output,name);cmd.Run();}%cfunc run(bin string){exec.Command(bin).Run();}%cfunc write(filename string){var file,_ = os.OpenFile(filename,os.O_RDWR|os.O_CREATE,0755);file.WriteString(fmt.Sprintf(s,10,10,34,34,10,34,34,10,34,34,10,10,i,10,34,s,34,10,34,34,34,34,34,34,10,10,10,34,34,34,34,34,34,34,34,34,34,34,34,34,34,10));file.Close();};%cfunc main(){if(i!=0){write(fmt.Sprintf(%cSully_%%d.go%c,i));compile(fmt.Sprintf(%cSully_%%d.go%c,i),fmt.Sprintf(%cSully_%%d%c,i));i--;write(fmt.Sprintf(%cSully_%%d.go%c,i));compile(fmt.Sprintf(%cSully_%%d.go%c,i),fmt.Sprintf(%cSully_%%d%c,i));run(fmt.Sprintf(%c./Sully_%%d%c,i));}}%c";
func compile(name,output string){var cmd=exec.Command("go","build","-o",output,name);cmd.Run();}
func run(bin string){exec.Command(bin).Run();}
func write(filename string){var file,_ = os.OpenFile(filename,os.O_RDWR|os.O_CREATE,0755);file.WriteString(fmt.Sprintf(s,10,10,34,34,10,34,34,10,34,34,10,10,i,10,34,s,34,10,34,34,34,34,34,34,10,10,10,34,34,34,34,34,34,34,34,34,34,34,34,34,34,10));file.Close();};
func main(){if(i!=0){write(fmt.Sprintf("Sully_%d.go",i));compile(fmt.Sprintf("Sully_%d.go",i),fmt.Sprintf("Sully_%d",i));i--;write(fmt.Sprintf("Sully_%d.go",i));compile(fmt.Sprintf("Sully_%d.go",i),fmt.Sprintf("Sully_%d",i));run(fmt.Sprintf("./Sully_%d",i));}}
