FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN apt-get update && \
    apt-get install -y libreoffice && \
    pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "intake_exporter:app", "--host", "0.0.0.0", "--port", "8080"]
