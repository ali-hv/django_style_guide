# This docker file is used for production

# Creating python image
FROM python:3.12.2-alpine3.19

# Installing all python dependencies
ADD requirements/ requirements/
RUN pip install -r requirements/production.txt

# Get the django project into the docker container
RUN mkdir /app
WORKDIR /app
ADD ./ /app/
