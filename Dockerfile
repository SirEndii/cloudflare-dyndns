FROM python:3-alpine
LABEL org.opencontainers.image.source=https://github.com/sirendii/cloudflare-dyndns

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py ./

CMD [ "python", "./app.py" ]

EXPOSE 80
