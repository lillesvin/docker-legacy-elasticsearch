FROM java:openjdk-7-jre-alpine

ARG ES_VERSION=1.2.2
ENV ES_VERSION ${ES_VERSION}

LABEL maintainer="Anders K. Madsen <akm@novicell.dk>"

RUN apk add --update openssl \
    && wget -q "https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-${ES_VERSION}.tar.gz" -O - | tar zxf - \
    && mv /elasticsearch-${ES_VERSION} /elasticsearch

VOLUME /elasticsearch/data

EXPOSE 9200 9300

CMD ["/elasticsearch/bin/elasticsearch"]

