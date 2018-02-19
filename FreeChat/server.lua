local socket = require('socket')

host = '*'
port = 2020

print('Binding ' ..host.. ' and port ' ..port.. ' ...')
s = assert(socket.bind(host, port))
i, p = s:getsockname()

assert(i, p)
print('Waiting connection from a talker ' ..i..': ' ..p.. ' ...')
c = assert(s:accept())

print('Connected. Here is the stuff')
l, e = c:receive()

while not e do
  print(l)
  l, e = c:receive()
end

print(e)
