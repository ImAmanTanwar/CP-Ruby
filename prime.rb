def isPrime(n)
  for d in 2..Math.sqrt(n)
   if (n % d) == 0
    return false
    break
   end
  end
   true
 end
			
prime=Hash.new(0)      
t=gets.chomp.to_i
for i in 0...t
	val=gets.chomp.split(" ").map(&:to_i)
    for j in val[0]...val[1]
    	if j==1
    		next
      elsif prime[j]==1
        puts j
    	elsif isPrime(j)==true
        prime[j]=1
    		puts j
    	end
    end
    puts
end