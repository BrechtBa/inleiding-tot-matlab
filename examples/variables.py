# integer
A = 1
print(A)

# float
B = 3.572
print(B)

# string
C = 'string'
print(C)

# list
D = [1,2,3]
print(D)
E = [1,'test',4,D]
print(E)
print(E[:2])
print(E[-1])

# dictionary
F = {3:1, 5:'test', 'spam':'eggs'}
print(F)
print(F['spam'])

# assignment by reference
G = F
G['spam'] = 'african swallow'
print(F)
print(G)

H = dict(F)
H['spam'] = 'european swallow'
print(F)
print(H)
