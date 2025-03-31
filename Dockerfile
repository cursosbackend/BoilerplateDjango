FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip && \
    pip install -r requirements.txt

COPY . .

CMD ["tail", "-f", "/dev/null"]