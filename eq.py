#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
from sympy import Poly
from sympy.abc import x, y, z
from sympy import ImageSet, S
from sympy import solve
from sympy import sympify
from sympy import Float
from sympy import RealNumber
from decimal import Decimal
import ast

#print('Argument:')
#print(sys.argv[1])
print("begin!");
file = open("/home/nadia/bezie_and_triangulation/points"+sys.argv[1]+".txt", "w")


f = Poly(sys.argv[1], x, y,z)
i=1
j=1
while i >= -1:
    j=1
    while j >= -1:
        j=ast.literal_eval(('%f' % (j-0.1)).rstrip('0').rstrip('.'))
        zz=solve(f.eval({x: i, y: j}).as_expr(),z)
        for root in zz:
            #print(root.is_real)
            #print("x:",('%f' % i).rstrip('0').rstrip('.'), "y:", ('%f' % j).rstrip('0').rstrip('.'), ('%f' % root.as_real_imag()[0]).rstrip('0').rstrip('.'))
            if(root.is_real):
                #print(root.is_real)
                #print("x:",i, "y:", j, str(root.as_real_imag()[0]))
                s=str(('%f' % i).rstrip('0').rstrip('.'))+' '+str(('%f' % j).rstrip('0').rstrip('.'))+' '+str(('%f' % root.as_real_imag()[0]).rstrip('0').rstrip('.'))+'\n'
                #print(s)
                file.write(s)

    i=ast.literal_eval(('%f' % (i-0.1)).rstrip('0').rstrip('.'))

print("end!python!")
file.close()





