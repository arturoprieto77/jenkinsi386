FROM jenkins
MAINTAINER Arturo Prieto
USER root
RUN dpkg --add-architecture i386 && apt-get update && apt-get install -y --force-yes libstdc++5:i386 libpam0g:i386 sudo && apt-get clean
ADD ./jenkins.sudoers /etc/sudoers.d/jenkins
USER jenkins