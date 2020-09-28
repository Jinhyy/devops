# 컨테잉너 생성
# systemctl, hostctl 등의 커널 기능을 사용하는 프로그램을 사용할 수 있도록 privileged 부여
sudo docker run --privileged -d -ti --name=centos7 centos7-base:7.4 init

# 컨테이너 실행
sudo docker exec -it centos7 /bin/bash