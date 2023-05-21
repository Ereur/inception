#!/bin/bash

adduser $FTP_NAME --disabled-password --gecos "" && echo "$FTP_NAME:$FTP_PASS" | chpasswd

echo $FTP_NAME >> /etc/vsftpd.userlist

chown $FTP_NAME:$FTP_NAME /content

vsftpd /etc/vsftpd.conf