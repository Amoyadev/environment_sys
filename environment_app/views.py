from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from .models import Sistema, Modulo, Submodulo, Plataforma
""" import mysql.connector """
# Create your views here.

""" mydb = mysql.connector.connect(
host="localhost",
user="root",
password="",
database="inventario_sistema") """


""" 
mycursor = mydb.cursor()

sql = "SELECT \
  Sistema.nombre_sistema AS nombre_sistema \
  Modulo.nombre_modulo AS nombre_modulo \
  Submodulo.nombre_submodulo AS nombre_submodulo \
  Plataforma.nombre_plataforma AS nombre_plataforma \
  Plataforma.tipo_ambiente_plataforma AS ambiente \
  Plataforma.tipo_servidor_plataforma AS tipo_servidor \
  FROM Plataforma \
  LEFT JOIN Submodulo ON Submodulo.id_submodulo = Plataforma.id_submodulo \
  LEFT JOIN Modulo ON Modulo.id_modulo = Plataforma.id_modulo \
  LEFT JOIN Sistema ON Sistema.id_sistema = Plataforma.id_sistema" 

mycursor.execute(sql)

myresult = mycursor.fetchall()

for x in myresult:
  print(x) """

""" def index(request):
    return HttpResponse("Hello world!") """

""" def index(request):
    template = loader.get_template('index.html')
    return HttpResponse(template.render()) """


""" def mostrar_atributos(request):
    sistemas = Sistema.objects.all()
    modulos = Modulo.objects.all()
    submodulos = Submodulo.objects.all()
    plataformas = Plataforma.objects.all()

    context = {
        'sistemas': sistemas,
        'modulos': modulos,
        'submodulos': submodulos,
        'plataformas': plataformas,
    }

    return render(request, 'mostrar_atributos.html', context)


def plataformas(request):
  myplatforms = Plataforma.objects.all().values()
  template = loader.get_template('all_ambientes.html')
  context = {
    'myplatforms': myplatforms,
  }
  return HttpResponse(template.render(context, request)) """

""" def plataformas(request):
    sistemas = Sistema.objects.all().values()
    modulos = Modulo.objects.all().values()
    submodulos = Submodulo.objects.all().values()
    plataformas = Plataforma.objects.all().values()
    template = loader.get_template('all_ambientes.html')
    context = {
    'sistemas': sistemas,
    'modulos': modulos,
    'submodulos': submodulos,
    'plataformas': plataformas,
    }
    return HttpResponse(template.render(context, request)) """


def plataformas(request):
    """ plataformas = Plataforma.objects.select_related('id_modulo', 'id_submodulo', 'id_sistema').all().values() """
    plataformas = Plataforma.objects.select_related('id_sistema').all()
    """ template = loader.get_template('all_ambientes.html') """
    context = {
        'plataformas': plataformas,
    }
    """ return HttpResponse(template.render(context, request)) """
    return render(request, 'all_ambientes.html', context)


def detalles(request, id_plataforma):
    # myplatform = Plataforma.objects.select_related('sw_set').all()
    myplatform = Plataforma.objects.get(id_plataforma=id_plataforma)

    try:
        sw = myplatform.sw_set.all()  # Here is SW
        ip = sw.first().ip_set.all()  # Here is ip
    except Exception:
        sw = ''
        ip = ''

    print(sw)
    print(ip)

    template = loader.get_template('detalles.html')
    context = {
        'myplatform': myplatform,
        'sw': sw,
        'ip': ip,

    }
    return HttpResponse(template.render(context, request))


def main(request):
    template = loader.get_template('main.html')
    return HttpResponse(template.render())
