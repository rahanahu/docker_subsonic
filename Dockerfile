FROM rahanahu/streamsonic

ENV DEBIAN_FRONTEND noninteractive
ENV SUBSONIC_VERSION 6.1.5
ENV HOME /root


ENV PATH $HOME/bin:$PATH
ENV PKG_CONFIG_PATH /usr/local/lib/pkgconfig


USER ssman

CMD     export LANG=ja_JP.UTF-8 && \
        /usr/bin/subsonic \
        --home=/subsonic \
        --host=0.0.0.0 \
        --port=4040 \
#        --https-port=8443 \
        --max-memory=100 \
        --default-music-folder=/music \
        --default-podcast-folder=/podcast \
        --default-playlist-folder=/playlist \
        && sleep 5 && tail -f /subsonic/subsonic_sh.log