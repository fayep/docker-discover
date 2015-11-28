FROM alpine

RUN apk update
RUN apk add haproxy py-pip

WORKDIR /root

#RUN wget http://www.haproxy.org/download/1.5/src/haproxy-1.5.1.tar.gz
#RUN tar -zxvf haproxy-1.5.1.tar.gz

#RUN cd haproxy-1.5.1 && make TARGET=generic && make install

RUN pip install python-etcd Jinja2
RUN touch /var/run/haproxy.pid

ADD . /app

WORKDIR /app

EXPOSE 1936

CMD ["python", "main.py"]

