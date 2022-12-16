FROM centos:7
RUN yum install openssh-server openssh-clients vim mlocate curl wget net-tools sudo -y
RUN yum install epel-release -y
RUN  yum install ansible -y
RUN echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
RUN ssh-keygen -A
RUN echo "root:centos" | chpasswd
RUN useradd -m mahsan
RUN echo "mahsan:tripod001" | chpasswd
RUN echo "mahsan  ALL=(ALL)  NOPASSWD: ALL" >> /etc/sudoers
CMD ["/usr/sbin/sshd", "-D"]
