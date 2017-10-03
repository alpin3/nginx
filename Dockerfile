FROM alpine:3.4
MAINTAINER kost - https://github.com/kost

RUN apk --update add nginx-rtmp && rm -f /var/cache/apk/* && \
 mkdir -p /run/nginx && \
 echo "Success"

COPY root /

VOLUME ["/data"]

EXPOSE 80

# ENTRYPOINT ["/scripts/run.sh"]
CMD ["nginx", "-g", "daemon off;"]

