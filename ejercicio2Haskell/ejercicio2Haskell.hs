fiboEst n = take n . map head $ iterate (\(a:b:c:d) -> b:c:(a+b+c):d) [0,1,1]

fiboRec =
    let x 0 = 0
        x 1 = 1
        x 2 = 1
        x n = fiboRec (n-3) + fiboRec (n-2) + fiboRec (n-1)
        fx = map x [0 .. ]
    in \f -> (fx !! f)

main = do 
    putStrLn "Ingrese un numero"
    n <- getLine
    let num = (read n :: Int)
    putStrLn "Salida: fibonacci con funcion estructurada "
    print (fiboEst num)
    putStrLn "Salida: fibonacci con funcion recursiva "
    print (map fiboRec[0..num-1])