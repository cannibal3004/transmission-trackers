FROM python:latest
ENV TRANSMISSION_HOST=localhost
ENV TRANSMISSION_PORT=9091
ENV TRANSMISSION_USER=admin
ENV TRANSMISSION_PASSWORD=password
ENV TRANSMISSION_FILTER=
ENV TEMP=/tmp
RUN pip3 install transmissionrpc & \
    mkdir /app 
COPY transmission-trackers.py /app
COPY transmission-trackers.timer /app
COPY transmission-trackers.service /app
COPY requirements.txt /app
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
WORKDIR /app
CMD /entrypoint.sh
