#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
from sympy import Poly
from sympy.abc import x, y

#print('Argument:')
#print(sys.argv[1])
print("begin!");
file = open("/home/nadia/bezie_and_triangulation/points"+sys.argv[1]+".txt", "w")


f = Poly(sys.argv[1], x, y)
for i in range(0, 10):
    for j in range(0,10):
        print("x:",i, "y:", j, "val:", f.eval({x: i, y: j}))
        s=str(i)+' '+str(j)+' '+str(f.eval({x: i, y: j}))+'\n'
        file.write(s)


file.close()





