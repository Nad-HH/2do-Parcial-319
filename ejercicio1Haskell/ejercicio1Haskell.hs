-- Generamos Fibonacci Recursivo:
fiboR :: Integer -> Integer
fiboR 0 = 0
fiboR 1 = 1
fiboR 2 = 1
fiboR n = fiboR(n-1) + fiboR(n-2) + fiboR(n-3)

-- mostramos Fibonacci Recursivo:
mostFiboR :: Integer -> IO() 
mostFiboR n = do
    if n >= 0
    then do
       mostFiboR (n-1)
       putStr $ (show(fiboR n)++" ")
    else putStr ""

-- Fibonacci Estructural:
fiboEst :: Integer -> Integer -> Integer -> Integer -> IO() 
fiboEst n a b c = do
    if n >= 0
    then do
       let d = a+b+c
       putStr $ (show(d)++" ")
       fiboEst (n-1) b c d
    else putStr ""

-- Principal:
main :: IO()
main = do
    putStrLn ("Introduxca un numero:")
    n <- getLine
    putStrLn ("Sucesion fibonacci con funcion estructural")
    fiboEst ((read n)-1) (-1) 1 0
    putStrLn ("\nSucesion fibonacci con funcion recursiva")
    mostFiboR ((read n)-1)