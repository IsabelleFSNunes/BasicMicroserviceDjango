FROM ubuntu:focal AS native

EXPOSE 8000
EXPOSE 5432

## set up of dependencies and configs required 
RUN apt-get update -y && \ 
    apt-get upgrade -y && \ 
    apt-get install -y git python3-pip libpq-dev

RUN echo -e "Environment variables are: \n user name: ${NAME_USER}\n email: ${EMAIL_USER}\n token: ${TOKEN_USER}\n\n"

RUN git config --global user.name "${NAME_USER}" && \ 
    git config --global user.email "${EMAIL_USER}"  && \ 
    git config --global url."https://${TOKEN_USER}:@github.com/".insteadOf "https://github.com/"

RUN pip install --upgrade pip && \
    pip install psycopg2 psycopg2-binary Django colorama

WORKDIR /opt