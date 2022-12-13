FROM python:3.8

WORKDIR /app
COPY . .

RUN pip install -r requirements.txt

# ENTRYPOINT ["python"]
CMD ["gunicorn --bind 0.0.0.0:5000 wsgi:app"]