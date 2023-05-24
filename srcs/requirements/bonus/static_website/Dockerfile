FROM  debian:buster

RUN apt-get update && apt-get install -y curl

RUN mkdir /app

RUN mkdir /static

COPY tools/test/app /app

COPY tools/test/app/static /static

COPY  tools/script.sh /script.sh

RUN chmod +x /script.sh

CMD /script.sh

# RUN mkdir /app

# WORKDIR /app

# RUN npm install -g @nestjs/cli && nest new static-website && cd static-website && nest generate --type=npm module static && nest generate --type=npm controller static --no-spec && nest generate --type=npm service static --no-spec

# WORKDIR /app/static-website

# RUN npm run start:dev