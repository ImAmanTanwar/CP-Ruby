t=gets.chomp
numb=gets.chomp.split(" ").map(&:to_i)
prod=1
numb.each { |x| prod*=x}
puts prod
n=gets.chomp.to_i
for i in 1..n
	count=0
	temp=prod
	val=gets.chomp.to_i
	   begin
          if temp%val==0
          	count+=1
          elsif temp%val!=0
          	break
          end
           temp=temp/val
        end while temp>0
        puts count
 end