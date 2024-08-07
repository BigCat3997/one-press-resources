FROM mcr.microsoft.com/dotnet/aspnet:6.0

WORKDIR /app

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl \
    nano

ARG ARG_APP_PATH=*
ARG ARG_TARGET_DLL_FILE=
ARG ARG_OPTS=

ENV TARGET_DLL_FILE=${ARG_TARGET_DLL_FILE}
ENV OPTS=${ARG_OPTS}

COPY $ARG_APP_PATH .

COPY entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ["sh","./entrypoint.sh"]
