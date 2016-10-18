print '\n'.join(str(x) for x in xrange(1,int(raw_input())+1) if x%2==1)

# Comparing a Haskell version.
# let n=20
# putStr$unlines$map show$takeWhile(<n)[x|x<-[1,3..]]
