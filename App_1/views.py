from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
# def index(req): 
#     return HttpResponse('Receitas')

def index(request):
    return render(request, 'index.html')


def news(request):
    return render(request, 'news.html')