FROM debian:jessie
MAINTAINER itech

ENV OPENFIRE_VERSION 3.9.3
ENV VIDEOBRIDGE_VERSION 370

RUN apt-get update \
 && apt-get install --no-install-recommends -y sudo wget openjdk-7-jre unzip\
 && wget --no-verbose "http://www.igniterealtime.org/downloadServlet?filename=openfire/openfire_${OPENFIRE_VERSION}_all.deb" \
      -O /tmp/openfire_${OPENFIRE_VERSION}_all.deb \
 && dpkg -i /tmp/openfire_${OPENFIRE_VERSION}_all.deb \
 && wget --no-verbose "https://download.jitsi.org/jitsi-videobridge/linux/jitsi-videobridge-linux-x64-${VIDEOBRIDGE_VERSION}.zip" \
      -O /tmp/videobridge.zip \
 && unzip /tmp/videobridge.zip -d /opt/ \
 && mv /opt/jitsi-videobridge-linux-x64-${VIDEOBRIDGE_VERSION} /opt/jitsi \ 
 && rm -rf /tmp/* \
 && apt-get purge --auto-remove -y wget unzip \
 && rm -rf /var/lib/apt/lists/*

COPY jitsivideobridge.jar /usr/share/openfire/plugins/jitsivideobridge.jar
COPY start /start
RUN chmod 755 /start

EXPOSE 3478
EXPOSE 3479
EXPOSE 5222
EXPOSE 5223
EXPOSE 5229
EXPOSE 5275
EXPOSE 7070
EXPOSE 7443
EXPOSE 7777
EXPOSE 9090
EXPOSE 9091

VOLUME ["/data"]
CMD ["/start"]

