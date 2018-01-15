FROM alpine:latest
MAINTAINER Nicolas Albert nicolasa@convertigo.com

RUN apk --no-cache add p7zip

ENV VERS 1604

RUN apk --no-cache add cabextract && \
	wget http://7-zip.org/a/7z${VERS}.msi \
		http://7-zip.org/a/7z${VERS}-x64.msi && \
	cabextract -F _7zCon.sfx 7z${VERS}.msi -p > /usr/lib/p7zip/7zConWin32.sfx && \
	cabextract -F _7zCon.sfx 7z${VERS}-x64.msi -p > /usr/lib/p7zip/7zConWin64.sfx && \
	ln -s /usr/lib/p7zip/7zCon.sfx /usr/lib/p7zip/7zConLin64.sfx && \
	rm *.msi
	
WORKDIR /pwd

ENTRYPOINT ["/usr/bin/7z"]

CMD ["--help"]