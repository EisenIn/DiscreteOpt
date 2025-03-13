#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Mar 10 11:46:19 2025

@author: eisenbrand
"""
from sympy import *
A = Matrix([[1, 2, 2],
             [2, 1, 2],
             [2, 2, 1],            
             [-1, 0, 0],
             [0, -1, 0],
             [0, 0, -1]])
 
b = Matrix([10,14,11,0,0,0])
c = Matrix([6,14,13])
r = Matrix([0,-1,0])

B = [0,1,2]
 
A_B = A[B,:] 
b_B = b[B,:]
 
x =  A_B.solve(b_B) 
l = A_B.transpose().solve(c)
d = A_B.transpose().solve(r)
Ad = A*d 

N = []
for i in range(6):
    if Ad[i]>0:
        N.append(i)


L = {"A_B =":A_B, "b_B =":b_B, "x^*=":x, "\lambda_B =":l , "d = ":d, "Ad= " : Ad}


for key, value in L.items():
    print (key, latex(value,mat_str='pmatrix', mat_delim=None))
    

print("Positive indices ",  N)

print("b-Ax^* = ")
print( latex(b - A*x, mat_str='pmatrix', mat_delim=None))