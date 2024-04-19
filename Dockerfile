FROM python:3.9-alpine3.16

COPY requirements.txt /temp/requirements.txt

RUN pip install --upgrade pip
RUN pip install -r /temp/requirements.txt
RUN adduser --disabled-password admin
USER admin

WORKDIR /service
COPY service /service
EXPOSE 8000
