FROM python:3

RUN apt-get update && apt-get -y install sudo

RUN pip install django==3.2

COPY . .

RUN python manage.py migrate

CMD ["python","manage.py","runserver","0.0.0.0:8001"]
