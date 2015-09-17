import matplotlib.pyplot as plt
from object_oriented import Vector


# inheritance
class LocalizedVector(Vector):
	"""
	A class defining a localized vector as a vector with an origin
	"""
	def __init__(self,x,y,origin=None):
		"""
		Returns a LocalizedVector Instance
		
		Arguments:
		x: float, x coordinate of the vector
		y: float, y coordinate of the vector
		origin=None: Vector, origin of the vector
		"""
		Vector.__init__(self,x,y)
		
		if isinstance(origin,LocalizedVector):
			self.origin = Vector(origin.origin.x+origin.x,origin.origin.y+origin.y)
		elif isinstance(origin,Vector):
			self.origin = origin
		else:
			self.origin = Vector(0,0)

		
	def __str__(self):
		return self.origin.__str__()+' -> ({},{})'.format(self.x,self.y)	
		
	def __add__(self,v):
		return LocalizedVector(self.x+v.x,self.y+v.y,self.origin)
		
	def plot(self):
		"""
		Plots the vector
		"""
		plt.plot([self.origin.x,self.origin.x+self.x],[self.origin.y,self.origin.y+self.y])
	
if __name__ == '__main__':
	o = Vector(0,2)
	a = LocalizedVector(1,4,o)
	b = LocalizedVector(3,2,a)

	c = a+b

	print(a)
	print(b)
	print(c)
	print(c.magnitude())
	
	a.plot()
	b.plot()
	c.plot()
	plt.show()