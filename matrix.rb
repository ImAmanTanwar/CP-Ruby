require "matrix"
num=gets.chomp.to_i
mat=Matrix[[1,1],[1,0]]**num
puts mat[2][1]