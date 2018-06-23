FROM perl:latest
MAINTAINER	kcrist
WORKDIR /etc/mogilefs/
ADD . /etc/mogilefs/
RUN cpanm MogileFS::Server \
    && cpanm MogileFS::Utils \
    && cpanm MogileFS::Client \
    && cpanm IO::AIO \
    && cpanm DBD::mysql \
    && mkdir /var/mogdata
VOLUME	/var/mogdata
EXPOSE	7500
EXPOSE	7501
CMD ["mogstored","--config=/etc/mogilefs/mogstored.conf"]
