FROM alpine:latest

RUN apk add --update \
    python3 \
    py3-pip \
    libpq

# RUN apk add --virtual .build-deps gcc python3-dev musl-dev

WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt 

EXPOSE 8000

CMD ["chalice", "local", "--host", "0.0.0.0", "--port", "8000"]
