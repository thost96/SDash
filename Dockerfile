FROM debian:latest
FROM python:3.11

WORKDIR /app

EXPOSE 5000

COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python3", "app/server.py"]
