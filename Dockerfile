FROM python:3.8.5-alpine

RUN pip install --upgrade pip

COPY ./requirement.txt .
RUN pip install -r requirement.txt

COPY ./django_project /app

WORKDIR /app

COPY ./entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]

