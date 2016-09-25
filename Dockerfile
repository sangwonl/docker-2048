FROM alpine:3.2

MAINTAINER alex <alexwhen@gmail.com> 

RUN apk add --update nginx && rm -rf /var/cache/apk/*

COPY 2048 /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
