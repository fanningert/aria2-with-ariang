FROM fanningert/aria2-daemon

MAINTAINER fanningert <thomas@fanninger.at>

RUN apk update && \
	apk add wget && \
	wget https://github.com/mayswind/AriaNg/releases/download/0.3.0/aria-ng-0.3.0.zip /aria2-webui/aria-ng.zip && \
        cd /aria2-webui && \
	unzip aria-ng.zip && \
    	apk del wget && \
	apk add --update darkhttpd

ADD root/ /

RUN chmod -v +x /etc/services.d/*/run /etc/cont-init.d/*

EXPOSE 80
