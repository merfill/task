FROM ubuntu:20.04


RUN mkdir -p /task
WORKDIR /task

RUN apt-get update && \
    DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata && \
    apt-get -y install \
        python3 \
        python3-pip \
        uwsgi \
        uwsgi-plugin-python3 && \
    pip3 install --upgrade pip  && \
    pip3 install numpy flask flask-cors connexion[swagger-ui]

COPY uwsgi.ini .
COPY server.py .
COPY api.py .
COPY models.py .
COPY swagger.yaml .

CMD ["uwsgi", "--ini", "uwsgi.ini"]
