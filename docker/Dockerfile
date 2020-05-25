FROM python:3
MAINTAINER Ivan Abregu
ENV PYTHONUNBUFFERED 1
COPY . /code
RUN pip install --upgrade pip
RUN pip install -r /code/requirements/dev.txt
WORKDIR /code

