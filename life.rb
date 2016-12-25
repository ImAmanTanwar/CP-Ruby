t=Integer(gets.chomp)
val=[]
for i in 0...t
	x=0
	y=0
	word=gets.chomp.split(" ")
	k=Integer(word[0])
	l=Integer(word[1])
	Hboys=gets.chomp.split(" ")
	Hboys.sort!
	Hgirls=gets.chomp.split(" ")
	Hgirls.sort!
	while x<k && y<l
		if Integer(Hgirls[y])<Integer(Hboys[x])
			x+=1
			y+=1
		else
			break
		end
	end
		if(x==k && Hboys.length==k && Hgirls.length==l)
			val[i]="YES"
		else
			val[i]="NO"
		end
end
val.each do |x|
	puts x
end