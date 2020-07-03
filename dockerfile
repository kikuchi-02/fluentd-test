FROM amazonlinux:latest

RUN yum -y update && \
    yum install -y \
    shadow-utils \
    sudo \
    rsyslog \
    useradd ec2-user && \
    echo "ec2-user ALL=NOPASSWD: ALL" >> /etc/sudoers && \
    curl -L https://toolbelt.treasuredata.com/sh/install-amazon2-td-agent3.sh | sh && \
    echo "*.*  @127.0.0.1:5140" >> /etc/rsyslog.conf
# /usr/sbin/td-agent-gem install fluent-plugin-ec2-metadata