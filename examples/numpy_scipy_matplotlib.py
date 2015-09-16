import numpy as np
import scipy.integrate
import matplotlib.pyplot as plt

# numpy example
x = np.linspace(0,2*np.pi,100)
c = np.cos(x)
s = np.sin(x)
ss = scipy.integrate.cumtrapz(c,x)

# matplotlib example
plt.rc('text', usetex=True)
plt.rc('font', family='serif')
plt.rc('figure', autolayout=True)

plt.figure(figsize=(15/2.54,10/2.54))
plt.plot(x,c,label='cosinus')
plt.plot(x[1:],ss,label='$\int$ cosinus$(x)$ d$x$')
plt.plot(x,s,label='sinus')
plt.gca().set_xlabel('$x$ (rad)')
plt.gca().set_ylabel('$y$')
plt.legend()

plt.savefig('sinus_cosinus.pdf')
plt.show()
