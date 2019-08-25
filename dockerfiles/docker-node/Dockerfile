FROM leerenbo/ubuntu-docker:latest

WORKDIR /tmp/

RUN wget https://deb.nodesource.com/setup_10.x \
&& bash setup_10.x \
&& apt-get install -y nodejs \
&& npm config set registry http://www.leerenbo.cn:8081/repository/taobaonpm/ \
&& rm -rf /var/lib/apt/lists/*

#ENV VERSION=v10.16.2 DISTRO=linux-x64 
#ENV PATH=/usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin:$PATH
#RUN wget https://nodejs.org/dist/$VERSION/node-$VERSION-$DISTRO.tar.xz \
#&& mkdir -p /usr/local/lib/nodejs \
#&& tar -xJvf node-$VERSION-$DISTRO.tar.xz -C /usr/local/lib/nodejs 
#&& ln -s /usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin/node /usr/bin/node \
#&& ln -s /usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin/npm /usr/bin/npm \
#&& ln -s /usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin/npx /usr/bin/npx



