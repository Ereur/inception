FROM  debian:buster

RUN apt-get update && apt-get install -y curl

RUN mkdir /app

RUN mkdir /static

COPY tools/app /app

COPY tools/app/static /static

COPY  tools/script.sh /script.sh

RUN chmod +x /script.sh

CMD /script.sh