import matplotlib.pyplot as plt

# class definition
class Vector:
	"""
	A class defining a 2 dimensional vector
	"""
	def __init__(self,x,y):
		"""
		Returns a Vector Instance
		
		Arguments:
		x: x coordinate of the vector
		y: y coordinate of the vector
		"""
		self.x = x
		self.y = y
	
	def __str__(self):
		return '({},{})'.format(self.x,self.y)
		
	def __add__(self,v):
		return Vector(self.x+v.x,self.y+v.y)	
	
	def magnitude(self):
		return (self.x**2+self.y**2)**0.5
		
	def plot(self):
		"""
		Plots the vector
		"""
		plt.plot([0,self.x],[0,self.y])
		


if __name__ == '__main__':
	help(Vector.plot)
			
	a = Vector(1,4)
	b = Vector(3,2)

	c = a+b

	print(a)
	print(b)
	print(c)
	print(c.magnitude())
	
	a.plot()
	b.plot()
	c.plot()
	plt.show()