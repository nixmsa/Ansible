FROM centos:7
RUN yum install openssh-server openssh-clients -y
RUN yum install epel-release -y
RUN  yum install ansible -y
RUN echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
RUN ssh-keygen -A
RUN echo "root:centos" | chpasswd
CMD ["/usr/sbin/sshd", "-D"]
