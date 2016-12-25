t=Integer(gets.chomp)
x=[]
y=[]
sum=0
 for i in 0...t
 	words=gets.chomp.split(" ")
 	x[i]=Integer(words[0])
 	y[i]=Integer(words[1])
 end
 for i in 0...t-1
 	for j in i+1...t
       sum=sum+(x[j]-x[i]).abs + (y[j]-y[i]).abs
   end
end
puts sum