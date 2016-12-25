arr=[]

def randomPivot()
	return Random.rand(0..arr.count-1)
end

def partition(arr,p,r,x)
	k=0
	until arr[k]!=x
		k+=1
	end
	swap(arr,k,r)
	i=p-1
	for j in p..r-1
		if arr[j]<=x
			i+=1
			swap(arr,i,j)
		end
	end
	swap(arr,i+1,r)
	return i+1
end

def swap(arr,m,n)
	temp=arr[m]
	arr[m]=arr[n]
	arr[n]=temp
end

num=gets.chomp.to_i
for j in 0...num
	arr[j]=gets.chomp.to_i
end
pivot=gets.chomp.to_i
puts partition(arr,0,num,pivot)
arr.each { |x| puts x  }