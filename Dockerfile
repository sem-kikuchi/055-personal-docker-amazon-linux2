FROM amazonlinux:2


# install amazon-linux-extras install
#RUN amazon-linux-extras install -y

# yum update & install
RUN yum update -y \
    && yum install \
        systemd \
        tar \
        unzip \
        sudo \
        wget \
        which \
        -y

RUN yum groupinstall "Development Tools" -y

# RUN amazon-linux-extras install -y BCC

RUN amazon-linux-extras install -y epel
RUN yum install -y cmake3

# install aws cli v2
#RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
#    && unzip awscliv2.zip \
#    && sudo ./aws/install


RUN yum install java-11-amazon-corretto-headless -y

RUN amazon-linux-extras install python3.8 -y
RUN pip3.8 install statsd watchdog pandas

# create user
RUN useradd "ec2-user" && echo "ec2-user ALL=NOPASSWD: ALL" >> /etc/sudoers

# install for develop, etc.
#RUN sudo amazon-linux-extras install golang1.11 -y



# init
CMD ["/sbin/init"]

