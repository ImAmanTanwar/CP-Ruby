arr=[]
sol=[]
ans=[]
t=gets.chomp.to_i
num=gets.chomp.split(" ")
for i in 0...t
	arr[i]=Integer(num[i])
end
for i in 0...t
	sol[i]=0
	for j in 0...t
		if i==j || arr[i]==arr[j]
			next
		else
			if arr[i]%arr[j]==0
			sol[i]+=1
			end	 	
		end
	end
end
j=0
for i in 0...t
	if(sol[i]==0)
      ans[j]=arr[i]
      j+=1
  end		
end
ans.uniq!
ans.each do |x|
	print "#{x} "
end