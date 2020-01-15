FROM python:3.5.1

LABEL Author="Bui Hoang Luu"
LABEL E-mail="luugu196@gmail.com"
LABEL version="0.0.1b"

ENV PYTHONDONTWRITEBYTECODE 1
ENV FLASK_APP "app.py"
ENV FLASK_ENV "development"
ENV FLASK_DEBUG True

RUN mkdir /app
WORKDIR /app

RUN pip install --upgrade pip

ADD . /app

EXPOSE 5000

CMD flask run --host=0.0.0.0
