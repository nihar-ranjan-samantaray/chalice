FROM python:3.7-alpine

WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt 

EXPOSE 8000

CMD ["chalice", "local", "--host", "0.0.0.0", "--port", "8000"]
