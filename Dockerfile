from node:9.2.0-alpine

RUN apk update && \
    apk add openssl && \
    apk add curl && \
    apk add ca-certificates && \
    apk add tzdata && \
    apk add ca-certificates && \
    update-ca-certificates && \
    cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && \
    echo "America/Sao_Paulo" > /etc/timezone && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

RUN yarn global add kinesalite
EXPOSE 4567
ENTRYPOINT ["kinesalite"]
