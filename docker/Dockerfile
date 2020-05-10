FROM python:3
MAINTAINER Ivan Abregu
ENV PYTHONUNBUFFERED 1
COPY . /code
RUN pip install --trusted-host=pypi.org --trusted-host=files.pythonhosted.org --upgrade pip
RUN pip install --trusted-host=pypi.org --trusted-host=files.pythonhosted.org -r /code/requirements/base.txt
WORKDIR /code

