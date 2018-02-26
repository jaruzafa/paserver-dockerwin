FROM microsoft/windowsservercore
LABEL maintainer="jaruzafa@gmail.com"

ADD . /paserver
ADD http://altd.embarcadero.com/releases/studio/19.0/PAServer/Release2/setup_paserver.exe /paserver
WORKDIR /paserver
RUN install_paserver.bat
EXPOSE 64211
CMD ["/Program Files (x86)/Embarcadero/PAServer/19.0/paserver.exe"]