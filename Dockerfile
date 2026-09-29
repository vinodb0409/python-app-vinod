FROM python:3.13-alpine

RUN apk update && \
    apk upgrade


WORKDIR /app

COPY . .


RUN pip install --no-cache-dir -r requirements.txt

CMD ["python","app.py"]
