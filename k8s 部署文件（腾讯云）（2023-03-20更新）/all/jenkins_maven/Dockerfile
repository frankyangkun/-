FROM jenkins/jenkins
#FROM bitnami/jenkins:2.332.3-debian-11-r3

#USER root
# build参数
#ARG user=jenkins
# 安装依赖
#RUN apt-get update && apt-get install -y sudo 
# 添加用户：赋予sudo权限，指定密码
#RUN useradd --create-home --no-log-init --shell /bin/bash ${user} && adduser ${user} sudo && echo "${user}:${user}" | chpasswd

# 改变用户的UID和GID
#RUN usermod -u 1000 ${user} && usermod -G 1000 ${user}

# 指定容器起来的工作目录
#WORKDIR /home/${user}

# 指定容器起来的登录用户
#USER ${user}

# RUN是构建时执行
#RUN echo "${user}" > world.txt

USER root

ADD ./apache-maven-3.8.6-bin.tar.gz /usr/local/
ENV MAVEN_HOME=/usr/local/apache-maven-3.8.6
ENV PATH=$JAVA_HOME/bin:$MAVEN_HOME/bin:$PATH

RUN ls /usr/local
#RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers 
#RUN echo "${user}   ALL=(ALL)       ALL" >> /etc/sudoers
RUN cat /etc/passwd
RUN whoami
RUN mvn -v
# 指定容器起来的登录用户
#USER jenkins #不用指定,此时jenkins pod还没创建,jenkins用户还没有，会报错（ps:这里理解错了）
#上面不对,还是必须指定jenkins,否则jenkins容器起来后默认whoami就是root了,jenkins是已经在基础镜像里的
USER jenkins
