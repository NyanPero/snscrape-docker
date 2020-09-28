FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt /app

RUN apt update -y && \
    apt install git -y && \
    pip install --no-cache-dir -r requirements.txt && rm requirements.txt

