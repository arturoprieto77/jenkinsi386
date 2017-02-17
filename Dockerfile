FROM jenkins
MAINTAINER Arturo Prieto
dpkg --add-architecture i386
apt-get -y install ia32-lib-dev libstdc++5:i386 libpam0g:i386 sudo
RUN dpkg --add-architecture i386 && apt-get update && apt-get install -y --force-yes libstdc++5:i386 libpam0g:i386 sudo && apt-get clean
ADD ./jenkins.sudoers /etc/sudoers.d/jenkins