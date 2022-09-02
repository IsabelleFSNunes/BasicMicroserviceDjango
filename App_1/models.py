from ast import keyword
from dataclasses import Field
from datetime import datetime
from django.db import models
from datetime import date

# Create your models here.
class models_news(models.Model):
    Title = models.CharField(max_length=200)
    content = models.TextField()
    author = models.CharField(max_length=150)
    data = models.DateField()
    keywords = models.CharField(max_length=40)