#!/bin/sh
yum remove java-1.* -y && \
yum install java-1.8.0-openjdk –y && \
yum install java-1.8.0-openjdk-devel –y && \
yum install nfs-utils –y && \
yum install zip unzip –y && \
yum install git –y && \
yum install acpid –y && \
yum install net-tools -y && \
cd /etc/yum.repos.d && \
cat <<EOT >> mapr.repo
[maprtech]
name=MapR Technologies
baseurl=http://package.mapr.com/releases/v6.0.0/redhat
enabled=1
gpgcheck=0
protect=1
EOT
