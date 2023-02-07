from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from .models import Plataforma
# Create your views here.

""" def index(request):
    return HttpResponse("Hello world!") """

""" def index(request):
    template = loader.get_template('index.html')
    return HttpResponse(template.render()) """

def plataformas(request):
  myplatforms = Plataforma.objects.all().values()
  template = loader.get_template('all_ambientes.html')
  context = {
    'myplatforms': myplatforms,
  }
  return HttpResponse(template.render(context, request))

  
def detalles(request, id_plataforma):
  myplatform = Plataforma.objects.get(id_plataforma=id_plataforma)
  template = loader.get_template('detalles.html')
  context = {
    'myplatform': myplatform,
  }
  return HttpResponse(template.render(context, request))

def main(request):
  template = loader.get_template('main.html')
  return HttpResponse(template.render())