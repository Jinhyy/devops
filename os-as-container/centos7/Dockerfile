FROM docker.io/centos:7.4.1708

# 사용자 지정
USER root

# 언어셋 설치
RUN yum clean all \
 && yum repolist \
 && yum -y update \
 && sed -i "s/en_US/all/" /etc/yum.conf  \
 && yum -y reinstall glibc-common

# 기본적으로 필요한 OS 패키지를 설치한다.
RUN  yum -y install bind-utils tar unzip vi vim telnet net-tools curl openssl man tcpdump \
 && yum -y install apr apr-util apr-devel apr-util-devel \
 && yum -y install elinks locate python-setuptools \
 && yum clean all

ENV LANG=en_US.utf-8 TZ=Asia/Seoul

# 컨테이너 실행시 실행될 명령
CMD ["/bin/bash"]

## 빌드 : sudo docker build -t centos7-base:7.4 .