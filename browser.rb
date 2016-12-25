size=Integer(gets.chomp)
t=Integer(gets.chomp)
sol=[]
for i in 0...t
  word=gets.chomp.split(" ")
      if(Integer(word[0])==Integer(word[1])&&Integer(word[0])>=size)
      	sol[i]="ACCEPTED"
      elsif (Integer(word[0])<size || Integer(word[1])<size)
      	sol[i]="UPLOAD ANOTHER"
      else
      	sol[i]="CROP IT"
      end
  end
  sol.each do |x|
  	puts x
  end
