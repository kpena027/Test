FROM python:3.7-alpine
LABEL maintainer="kpena027@fiu.edu"

#RUN adduser -D flask
RUN pip install flask

COPY ./Simple-Flask /Simple-Flask
WORKDIR /Simple-Flask

ENV FLASK_APP hello.py

#RUN chown -R flask:flask ./
#USER flask

EXPOSE 5000

CMD flask run --host=0.0.0.0