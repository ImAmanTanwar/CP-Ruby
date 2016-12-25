require 'socket'
hostname='localhost'
port=2000
s=TCPSocket.open(hostname,port)
str=""
while str!="stop"
	line=s.gets
	puts line.chop
	str=gets.chomp
	s.puts "#{str}"
end
s.close