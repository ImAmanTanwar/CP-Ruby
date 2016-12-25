val=gets.chomp.to_i

def binary(n)
	while n!=0
		binary(n/2)
		print "#{n%2}"
	end
end
binary(val)