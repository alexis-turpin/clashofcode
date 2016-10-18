c = {}
def a(x):
 if x<3:return 1
 if x not in c:c[x]=a(a(x-1))+a(x-a(x-1))
 return c[x]
print ' '.join(str(a(x))for x in xrange(1,input()+1))
