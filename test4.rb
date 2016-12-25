t=gets.chomp.to_i
sol=[]
var=[]
for i in 0...t
	sol[i]=0
	words=gets.chomp.split(" ")
	n=Integer(words[0])
	for j in 0...n
		var[j]=Integer(words[j+1])
	end
	var.sort!
	sol[i]=(var[0]+var[var.length-1])-(var[(n/2)-1]+var[n/2])
end
sol.each do |x|
	puts x
end