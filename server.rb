require "socket"

sock = TCPServer.new(1331)

loop do
  client = sock.accept()

  puts("client conneted")
  while 1
    print("root#")
    command = gets.chomp
    client.puts(command)
    puts("#{command}")
end
end
