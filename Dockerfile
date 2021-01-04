FROM python:3.9.1-slim

WORKDIR /codestats

COPY requirements.txt /codestats

RUN pip install -r requirements.txt

COPY . /codestats

ENTRYPOINT [  "gunicorn", "run:app", "-b", "0.0.0.0:8000" ]

