import matplotlib.pyplot as plt

# class definition
class vector:
	"""
	A class defining a 2 dimensional vector
	"""
	def __init__(self,x,y):
		"""
		Returns a vector Instance
		
		Arguments:
		x: x coordinate of the vector
		y: y coordinate of the vector
		"""
		self.x = x
		self.y = y

		
	def __str__(self):
		return '({},{})'.format(self.x,self.y)
		
	def __add__(self,v):
		return vector(self.x+v.x,self.y+v.y)	
	
	def plot(self,origin=None):
		"""
		Plots the vector from an optional origin
		
		Arguments:
		optional = None: starting point of the vector
		"""
		if origin == None:
			origin = vector(0,0)
			
		plt.plot([origin.x,origin.x+self.x],[origin.y,origin.y+self.y])
		


if __name__ == '__main__':
	help(vector.plot)
			
	a = vector(1,4)
	b = vector(3,2)

	c = a+b

	print(a)
	print(b)
	print(c)

	a.plot()
	b.plot(a)
	c.plot()
	plt.show()