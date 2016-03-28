FROM tsuru/base-platform

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:webupd8team/java && \
    apt-get update && \
    apt-get install -y oracle-java8-installer

RUN	cp /var/lib/tsuru/base/deploy /var/lib/tsuru

CMD "/bin/bash"
