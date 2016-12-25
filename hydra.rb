for i in 1..gets.chomp.to_i
	h=Hash.new(0)
	char=gets.chomp.split("")
	fun=0
	char.each { |x| h[x]+=1 }
	h.each do |x,y|
	   if (y+96).chr == x
	   	next
	   else
	   	fun=1
	   	break
	   end
	end
	if fun==0
		puts "HYDRA"
	else
		puts "S.H.I.E.L.D"
	end
end