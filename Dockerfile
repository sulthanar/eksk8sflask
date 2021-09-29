FROM  ubuntu:18.04
RUN yum update -y && yum install git -y && yum install unzip -y
WORKDIR /opt
RUN yum install python3-pip -y
RUN yum install python3-flask -y
RUN pip3 install mysql-connector-python
RUN yum install mysql-server -y
RUN yum install libmysqlclient-dev -y
RUN pip3 install flask-mysqldb
RUN git clone  https://github.com/sulthanar/eksk8sflask.git
WORKDIR /opt/eksk8sflask
RUN mkdir templates
RUN mv flask_main flask_main.py
RUN mv form.html templates
RUN mv users.html templates
ENTRYPOINT [ "python3" ]

CMD [ "flask_main.py" ]
