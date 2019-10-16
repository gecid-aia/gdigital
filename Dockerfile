FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /webapps
WORKDIR /webapps

RUN apt-get update && apt-get upgrade -y && apt-get install -y\
 vim-gtk

COPY requirements.txt /webapps/
RUN pip install -U pip setuptools
RUN pip install -r requirements.txt
COPY . /webapps/
