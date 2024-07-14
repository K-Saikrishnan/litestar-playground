FROM python:3.12.4-alpine3.20

WORKDIR /app

COPY requirements.txt /app/requirements.txt

RUN pip install --upgrade pip && pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY . .

EXPOSE 80

CMD ["litestar", "run", "--host=0.0.0.0", "--port=80"]
