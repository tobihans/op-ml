FROM python:3.7.3-stretch

WORKDIR /app

COPY ./requirements.txt /app

# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip && pip install --no-cache-dir -r requirements.txt

COPY . /app/

EXPOSE 80

CMD ["python3", "app.py"]

