def quicksort(k,p,r)
	if p<r 
		q=partition(k,p,r)
		quicksort(k,p,q-1)
		quicksort(k,q+1,r)
	end
	return k
end
def partition(c,p,r)
	x=c[r]
	i=p-1
	for j in p..(r-1)
		if c[j]<=x
			i+=1
			t=c[i]
			c[i]=c[j]
			c[j]=t
		end
	end
	t=c[i+1]
	c[i+1]=c[r]
	c[r]=t
end
puts "Enter no of elements"
n=gets.to_i
a=[]
for i in 0...n
	a[i]=gets.to_i
end
puts "sorted array is:"
b=quicksort(a,1,a.length)
b.each do |x| puts x end