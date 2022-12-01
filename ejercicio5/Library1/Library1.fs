namespace Library1

module solucion_fibos =
    let genera_fibo_est n =
        let mutable result=""
        let mutable v1 = 0
        let mutable v2 = 1
        let mutable v3 = 1
        let mutable aux = 1
        for i in 0..(n-1) do
           result <- result+" "+v1.ToString()
           aux <- (v1 + v2) + v3
           v1 <- v2
           v2 <- v3
           v3 <- aux                   
        result
    
    let rec fib_rec n =
        if n=0 then 0
        elif n=1 then 1
        elif n=2 then 1
        else fib_rec(n-1) + fib_rec(n-2)+ fib_rec(n-3)

    let genera_rec n =
        let mutable s = ""
        for i in 0..(n-1) do
            s<-s+" "+ (fib_rec i).ToString()
        s


type Class1() = 
    member this.X = "F#"

