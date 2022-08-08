from django.urls import path

from . import views

urlpatterns = [
    # rota, item , name 
    path('', views.index, name='index'),
    path('receita', views.receita, name='receita'),

] 
