FROM eclipse-temurin:21-alpine

WORKDIR /app

RUN apk update && apk upgrade
RUN apk add curl \
        nano

ARG ARG_APP_PATH=*.jar
ARG ARG_OPTS=

ENV OPTS=$ARG_OPTS

COPY $ARG_APP_PATH app.jar

COPY entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ["sh","./entrypoint.sh"]
