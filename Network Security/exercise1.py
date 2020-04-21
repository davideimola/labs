# Default port scanner
import socket

ip = '192.168.10.100'


for port in range(1, 1025):
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    result = sock.connect_ex((ip, port))
    if result == 0:
        print 'Opened port: %s' % port
    sock.close()