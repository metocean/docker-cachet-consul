FROM cachethq/cachet:latest

ADD https://dl.bintray.com/mitchellh/consul/0.5.2_linux_amd64.zip /tmp/consul.zip
RUN cd /bin \
&& apt-get update \
&& apt-get install unzip \
&& unzip /tmp/consul.zip \
&& chmod +x /bin/consul \
&& rm /tmp/consul.zip \
&& echo $"[program:consul]\ncommand=/bin/consul agent -data-dir /consul-data -config-dir /consul" >> /etc/supervisor/supervisord.conf \
&& mkdir /consul-data \
&& mkdir /consul 
COPY docker/status.json /consul/status.json


EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 53 53/udp 8000