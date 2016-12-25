def comb(a,b)
	val1=1
	val2=1
	for j in 0...b
		val1=val1*(a-j)
		val2=val2*(j+1)
	end
	return val1/val2
end
t=Integer(gets.chomp)
arr=[]
for i in 0...t
	words=gets.chomp.split(" ")
	n=Integer(words[0])
	c=Integer(words[1])
       if c<=n/2
       arr[i]=comb(n,c)
       else
       c=n-c
       arr[i]=comb(n,c)
       end
 end

arr.each do |x|
	puts x
end