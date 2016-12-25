gets.chomp
s=gets.chomp.split(" ")
h=Hash.new(0)
s.each {|x| h[x]+=1}
v=h.max_by {|x,y| y}
puts v[0]