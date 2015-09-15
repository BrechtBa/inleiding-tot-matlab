# flow control advanced
A = {'foo': 'bar',
     'spam': 'eggs',
	 'bacon': 'spam'}

# dictionaries
for key in A:
	print('{}: {}'.format(key,A[key]))

for key,val in A.iteritems():
	print('{}: {}'.format(key,val))

# zip
B = [1,2,3]
C = [7,8,9]
for b,c in zip(B,C):
	print('b = {:.0f}, c = {:.3f}'.format(b,c))
	
	
# enumerate
D = [1,11,111,1111]
for i,d in enumerate(D):
	print('D[{}] = {}'.format(i,d))