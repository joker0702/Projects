local socket = require("socket")
host = "localhost"
port = 2020

print("Attempting connection to host '" ..host.. "' and port " ..port.. "...")
c = assert(socket.connect(host, port))
print("Connected! Please type stuff (empty line to stop):")
l = io.read()
while l and l ~= "" and not e do
	assert(c:send(l .. "\n"))
	l = io.read()
end
