FROM python:3.8

RUN mkdir -p /app/

WORKDIR /app

COPY requirements.txt server.py /app

RUN pip install -r requirements.txt

EXPOSE 8080

CMD python server.py

