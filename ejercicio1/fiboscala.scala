object ejem{

def fiboRec(x:Int):Int={
if(x==0) return 0 
else if(x==1) 1
else if(x==2) 1
else fiboRec(x-1) + fiboRec(x-2) + fiboRec(x-3)
}

def mostrarfiboRec(x:Int):Unit={
for(i <- 0 to (x-1)){
print(fiboRec(i)+" ")   
}
}

def fiboEstruc(x:Int):Unit={
var a = 0
var b = 1
var c = 1
var d = 0
for(i <- 0 to (x-1)){
print(a+" ")
d=a+b+c
a=b
b=c
c=d   
}
}

def main(args:Array[String]):Unit = { 
println("Introduce un numero: ")
val num = scala.io.StdIn.readInt()
println("Salida: fibonacci con funcion recursiva")
mostrarfiboRec(num)
println("\nSalida: fibonacci con funcion estructurada")
fiboEstruc(num)
}
}