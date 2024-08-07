FROM docker.io/python:3.10-buster

WORKDIR /app

RUN apt update -y && apt upgrade -y
RUN apt install curl -y && apt install nano -y

ARG ARG_ENTRYPOINT=app.main:app
ARG ARG_APP_PORT=8000
ARG ARG_APP_PATH=.
ARG ARG_OPTS=

ENV ENTRYPOINT=$ARG_ENTRYPOINT
ENV APP_PORT=$ARG_APP_PORT
ENV OPTS=$ARG_OPTS

COPY $ARG_APP_PATH .

RUN pip install -r requirements.txt

EXPOSE $ARG_APP_PORT

COPY entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ["sh","./entrypoint.sh"]
