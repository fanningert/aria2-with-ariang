FROM fanningert/aria2-daemon

MAINTAINER fanningert <thomas@fanninger.at>

RUN apk update && \
	apk add wget unzip && \
        mkdir -p /aria2-webui && \
        cd /aria2-webui && \
	wget -o aria-ng.zip https://github.com/mayswind/AriaNg/releases/download/0.3.0/aria-ng-0.3.0.zip && \
	unzip aria-ng.zip && \
    	apk del wget unzip && \
	apk add --update darkhttpd

ADD root/ /

RUN chmod -v +x /etc/services.d/*/run /etc/cont-init.d/*

EXPOSE 80
