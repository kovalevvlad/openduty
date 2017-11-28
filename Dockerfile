FROM ubuntu:xenial

RUN apt-get update
RUN apt-get install -y python2.7 python-dev python-setuptools python-pip libmysqlclient-dev libsasl2-dev libldap2-dev libssl-dev

WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

ENTRYPOINT ["./entrypoint.sh"]
