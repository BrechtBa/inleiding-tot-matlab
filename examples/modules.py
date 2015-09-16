import object_oriented
import mymodule.submodule

# what is in the current namespace
print( dir() )
print( dir(mymodule.submodule) )


# a file imported from the current directory
a = object_oriented.vector(8,2)
b = object_oriented.vector(4,6)
print(a+b)

# a file imported from a subdirectory
mymodule.submodule.test()