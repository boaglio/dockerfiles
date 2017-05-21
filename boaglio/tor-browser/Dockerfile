FROM debian
MAINTAINER Fernando Boaglio <fernando@boaglio.com>

ENV TOR_VERSION=7.0a4
ENV RELEASE_FILE=tor-browser-linux64-${TOR_VERSION}_en-US.tar.xz
ENV RELEASE_URL=https://dist.torproject.org/torbrowser/${TOR_VERSION}/${RELEASE_FILE} 
ENV APP_HOME=/home/anonymous
ENV APP_DOWNLOAD=${APP_HOME}/tor-browser_en-US/Browser/Downloads
ENV PATH=$PATH:${APP_HOME}/tor-browser_en-US/Browser/

# update OS
RUN apt-get update && \
    apt-get install -y \
      ca-certificates \
      wget \
      file \
      libx11-xcb1 \
      libasound2 \
      libdbus-glib-1-2 \
      libgtk2.0-0 \
      libxrender1 \
      libxt6 \
      xz-utils && \
    rm -rf /var/lib/apt/lists/* && \
    useradd --create-home --home-dir /home/anonymous anonymous  
 
# download TOR browser 
RUN cd ${APP_HOME} && \
  wget ${RELEASE_URL} -P ${APP_HOME} && \
  tar xvf ${APP_HOME}/${RELEASE_FILE} -C ${APP_HOME} && \
  chmod +x ${APP_HOME}/tor-browser_en-US/Browser/start-tor-browser && \
  rm -v ${APP_HOME}/${RELEASE_FILE} && \
  chown -R anonymous:anonymous ${APP_HOME}

VOLUME ["${APP_DOWNLOAD}"]

WORKDIR ${APP_HOME}
USER anonymous

CMD ["start-tor-browser"]
 