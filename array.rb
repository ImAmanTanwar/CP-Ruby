def isEven(n)
	return (n%2==0)
end
puts "Enter n:"
n=gets.chomp.to_i
arr=[]
j=0
for i in 0...n
	arr[i]=gets.chomp.to_i
end
arr.sort!
for i in 0...n
	arr[n+i]=arr[i]
end
k=0
 while k<n
	if isEven(arr[n+k])
		if isEven(j+1)
			arr[j]=arr[n+k]
			j+=1
			k+=1
		else
            arr[j]="null"
            j+=1
        end
    else
    	if isEven(j+1)
    		arr[j]="null"
    		j+=1
    	else
            arr[j]=arr[n+k]
            j+=1
            k+=1
        end
    end
end
for i in 0...j
	print "#{arr[i]} "
end