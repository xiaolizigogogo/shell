FROM register.zytc.com/library/java7:1.0-release

LABEL maintainer="mritd <mritd1234@gmail.com>"

ENV TOMCAT_MAJOR 8
ENV TOMCAT_VERSION 8.5.20
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
ENV TOMCAT_NATIVE_LIBDIR $CATALINA_HOME/native-jni-lib
ENV LD_LIBRARY_PATH ${LD_LIBRARY_PATH:+$LD_LIBRARY_PATH:}$TOMCAT_NATIVE_LIBDIR
#ENV TOMCAT_TGZ_URL http://mirrors.tuna.tsinghua.edu.cn/apache/tomcat/tomcat-${TOMCAT_MAJOR}/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz 
ENV TOMCAT_TGZ_URL http://mirrors.hust.edu.cn/apache/tomcat/tomcat-8/v8.0.49/bin/apache-tomcat-8.0.49.tar.gz
RUN apk add --no-cache --virtual .build-deps \
        ca-certificates \
        tar \
        wget \
        openssl \
        openssl-dev \
        apr-dev \
        coreutils \
        dpkg-dev dpkg \
        gcc \
        libc-dev \
        make \
    && mkdir -p ${CATALINA_HOME} 
COPY ./tomcat/ ${CATALINA_HOME}/
RUN  apk del .build-deps \
    && rm -rf   ${CATALINA_HOME}/bin/*.bat \
                ${CATALINA_HOME}/bin/tomcat-native.tar.gz \
                ${CATALINA_HOME}/webapps/* \
                /tomcat.tar.gz 

EXPOSE 8080

CMD ["catalina.sh", "start"] 
