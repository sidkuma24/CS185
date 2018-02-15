#!/bin/sh
# yum remove java-1.* -y && \
# yum install java-1.8.0-openjdk –y && \
# yum install java-1.8.0-openjdk-devel –y && \
# yum install nfs-utils –y && \
# yum install zip unzip –y && \
# yum install git –y && \
# yum install acpid –y && \
# yum install net-tools -y && \
# cd /etc/yum.repos.d && \
# cat <<EOT >> mapr.repo
# [maprtech]
# name=MapR Technologies
# baseurl=http://package.mapr.com/releases/v6.0.0/redhat
# enabled=1
# gpgcheck=0
# protect=1
# EOT

yum install mapr-core –y && \
yum install mapr-fileserver –y && \
yum install mapr-webserver –y && \
yum install mapr-zookeeper –y && \
yum install mapr-cldb –y && \
yum install mapr-resourcemanager –y && \
yum install mapr-nodemanager –y && \
yum install mapr-historyserver –y && \
yum install mapr-nfs -y && \

yum install mapr-spark –y && \
yum install mapr-spark-historyserver –y && \
yum install mapr-kafka –y && \

cat <<EOF >> /etc/hosts
127.0.0.1 localhost
10.0.2.15 cs185-nat
192.168.56.101 cs185
EOF

hostname > /opt/mapr/hostname && \

/opt/mapr/server/configure.sh -C cs185:7222 \
-Z cs185:5181 -RM cs185 -HS cs185 \
-N my.cluster.com && \


