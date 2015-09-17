def spam(A,B,C=0,D=0):
	val = 100*A+10*B+C+0.1*D
	return val
	
D = spam(4,1)
print(D)

E = spam(4,1,5.3)
print(E)

F = spam(4,1,D=3,C=5)
print(F)
print(val)
