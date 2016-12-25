require 'socket'

server=TCPServer.open(2000)
loop {
	Thread.start(server.accept) do |client|
		client.puts "Hello there"
		client.puts "Type in message"
		s=""
		while s!="stop"
			s=client.gets
			client.puts=s.chomp
		end
		client.close
	end
}