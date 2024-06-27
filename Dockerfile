FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y tzdata

EXPOSE 3030

CMD ["python", "app.py"]
