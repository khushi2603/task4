FROM ubuntu:latest

RUN apt-get update && \
    apt install python3 -y && \
    apt install pip -y && \
    pip install django && \
    django-admin startproject hello

EXPOSE 8000

CMD ["python3", "hello/manage.py", "runserver"]

