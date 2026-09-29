FROM python:3.13-alpine

RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get clean && \
        rm -rf /var/lib/apt/lists/*
WORKDIR /app

COPY . .


RUN pip install --no-cache-dir -r requirements.txt

CMD ["python","app.py"]
