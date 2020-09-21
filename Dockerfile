FROM centos:latest 
RUN yum install wget -y
RUN yum install net-tools -y
RUN yum install sudo -y

RUN sudo wget -o /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
RUN sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
RUN yum install java-11-openjdk.*86_64 -y
RUN yum install jenkins -y
RUN yum install git -y
RUN yum install python3 -y
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
CMD java -jar /usr/lib/jenkins/jenkins.war

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
RUN chmod +x kubectl
RUN mv kubectl /usr/bin

RUN mkdir /root/.kube
EXPOSE 9999

