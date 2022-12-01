# -*- coding: utf-8 -*-
"""
Created on Wed Nov 30 20:49:39 2022

@author: ASUS
"""


from functools import reduce
 
fiboEst = lambda n: reduce(lambda x,n:[x[1],x[2],x[0]+x[1]+x[2]], range(n),[0,1,1])[0]
mosfibEst = lambda n: reduce(lambda c,n: c+str(fiboEst(n))+" ",range(n),"")
                    
fiboRec = lambda n: 0 if n == 0 else  ( 1 if n <= 2 else fiboRec(n-1) + fiboRec(n-2)+ fiboRec(n-3))
mosfiboRec= lambda n: "" if n == 0 else mosfiboRec(n-1)+ str(fiboRec(n-1))+ " "

print("Introduzca un número:", end=" ")
num=int(input())
print("Salida: Fibonacci con funcion estructurada(lambda)")
print(mosfibEst(num))
print("Salida: Fibonacci con funcion recursiva(lambda)")
print(mosfiboRec(num))