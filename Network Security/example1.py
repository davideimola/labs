import socket

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

socket_to_server = ('192.168.10.100', 9876)
sock.connect(socket_to_server)

try:
    # Sending message
    message = "hello!\n"
    sock.sendall(message)

    # Receive message
    data = sock.recv(128)
    print '%s' % data
finally:
    sock.close()