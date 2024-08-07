FROM nginx:1.25-alpine

WORKDIR /app

ARG ARG_APP_PATH=.
ARG ARG_SUB_PATH=default

ENV SUB_PATH=${ARG_SUB_PATH}

COPY ${ARG_APP_PATH} .

RUN rm -rf /etc/nginx/conf.d/default.conf
RUN sed -i 's/{{ sub_path }}/'"$SUB_PATH"'/g' ./nginx.conf && mv ./nginx.conf /etc/nginx/conf.d/nginx.conf

EXPOSE 80

COPY entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ["sh","./entrypoint.sh"]
