FROM python:3.8.7-alpine3.11
## run the image from python:3.8.7-alpine3.11

WORKDIR /app
## open new foldar with the name of "app" and run container in it

COPY requirements.txt ./
## copy requirements.txt to /app directory

RUN pip install -r requirements.txt
## install the requirements from requirements.txt file 

COPY . .
## copy my code to /app folder

EXPOSE 5000
## expose flask port 5000  

ENV FLASK_APP=app.py
## run my python script , environment variable

CMD flask run --host=0.0.0.0
## run flask on all network cards
