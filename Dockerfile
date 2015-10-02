FROM centos
RUN yum install -y git
RUN yum install -y curl
RUN curl --silent --location https://rpm.nodesource.com/setup | bash -
RUN yum install -y nodejs

RUN git clone https://github.com/mulesoft/api-designer.git
WORKDIR /api-designer
RUN npm install -g api-designer
EXPOSE 3000

ENTRYPOINT ["api-designer"]
