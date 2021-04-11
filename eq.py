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

#print('Argument:')
#print(sys.argv[1])
print("begin!");
file = open("/home/nadia/bezie_and_triangulation/points"+sys.argv[1]+".txt", "w")


f = Poly(sys.argv[1], x, y,z)
i=-1
j=-1
while i <= 1:
    i=i+0.1
    j=-1
    while j <= 1:
        j=j+0.1
        zz=solve(f.eval({x: i, y: j}).as_expr(),z)
        for root in zz:
            print("x:",i, "y:", j, str(root.as_real_imag()[0]))
            s=str(i)+' '+str(j)+' '+str(root.as_real_imag()[0])+'\n'
            file.write(s)




print("end!")
file.close()





