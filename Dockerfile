# FROM python:3.9
# ENV PYTHONUNBUFFERED 1
# RUN mkdir /code
# WORKDIR /code
# COPY requirements.txt /code/
# RUN pip install -r requirements.txt
# COPY . /code/
# CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]


FROM python:3.9

ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

# CMD python manage.py runserver 0.0.0.0:8000
