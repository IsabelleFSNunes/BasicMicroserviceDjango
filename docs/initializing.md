# Steps to initialize the application Django

## 1. Requirements
First requirement is a Operational System with Python3 and Django installed on your machine. 

If isn't, you can install with the follow commands: 

Install Python

pip install --upgrade pip
pip install virtualenvwrapper-win
python3 -m venv ./venv


To configure the main project: 

To start a application we can use this command: 
python .\manage.py startapp App_1


To use Databases: 


install the dependencies of django in venv had using:
pip install psycopg2
pip install psycopg2-binary

You must have a database that you can connected with API, at this moment we using the Postgre SQL, running with docker server. (docker-compose has port and others settings)

To adjust the informations default of settings.py (FirstProjectDjango/settings.py)

```
C:\Users\isabella.nunes\Documents\MyFiles\Faculdade\1s2022-github-implAlgs\AluraBasics\DjangoBasics> docker build  -t django/basics .
```


```
docker run django/basics -p 8000:8000 -v $PWD:"~/../opt/"
```

docker run -p 8000:8000  --name teste_django -it -v C:\\Users\\isabella.nunes\\Documents\\MyFiles\\Faculdade\\1s2022-github-implAlgs\\AluraBasics\\DjangoBasics\\:/opt/ django/basics /bin/bash