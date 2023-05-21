FROM debian:buster

RUN apt-get update && apt-get install -y vsftpd

COPY tools/vsftpd.conf /etc/vsftpd.conf

COPY tools/script.sh /script.sh

RUN chmod +x /script.sh

RUN mkdir -p /var/run/vsftpd && mkdir -p /var/run/vsftpd/empty

CMD ["./script.sh"]