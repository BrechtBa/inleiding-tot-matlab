import object_oriented
import mymodule.submodule

# what is in the current namespace
print( dir() )
print( dir(mymodule.submodule) )

# a file imported from the current directory
print( object_oriented.a )
d = object_oriented.vector(8,2)
print(d)

# a file imported from a subdirectory
mymodule.submodule.test()