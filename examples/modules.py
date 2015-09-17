import object_oriented
import mymodule.submodule

# what is in the current namespace
print( dir() )
print( dir(mymodule.submodule) )

# a file imported from the current directory
a = object_oriented.IdealGas('air',287)
b = object_oriented.IdealGas('argon',208)
print(a.density(101325,293.15))
print(b.density(101325,293.15))

# a file imported from a subdirectory
mymodule.submodule.test()