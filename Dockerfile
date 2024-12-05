FROM python:3

WORKDIR /data

RUN python manage.py migrate

COPY . .

EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]


