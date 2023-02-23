from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.template import loader
from .models import Sistema, Modulo, Submodulo, Plataforma,Ip, Sw
from django.contrib.auth.decorators import login_required
from django.contrib.auth import logout

# Create your views here.

def main(request):
  template = loader.get_template('main.html')
  return HttpResponse(template.render())

def exit(request):
  logout(request)
  return redirect('main')

@login_required
def plataformas(request):
    plataformas = Plataforma.objects.select_related('id_sistema').all()
    context = {
        'plataformas': plataformas,
    }
    return render(request, 'all_ambientes.html', context)

""" @login_required
def plataformas(request):
  plataformas = Plataforma.objects.select_related('id_sistema').all()
  # Se recogen los valores de los parámetros de búsqueda, en caso de existir
  plataforma_param = request.GET.get('plataforma', None)
  modulo_param = request.GET.get('modulo', None)
  submodulo_param = request.GET.get('submodulo', None)
  tipo_servidor_param = request.GET.get('tipo_servidor', None)
  sistema_param = request.GET.get('sistema', None)

  # Se aplica el filtro, si es que se han ingresado parámetros de búsqueda
  if any((plataforma_param, modulo_param, submodulo_param, tipo_servidor_param, sistema_param)):
      # Se construye un diccionario con los argumentos para filtrar las plataformas
      filter_args = {}
      if plataforma_param:
          filter_args['nombre_plataforma__icontains'] = plataforma_param
      if modulo_param:
          filter_args['id_modulo__nombre_modulo__icontains'] = modulo_param
      if submodulo_param:
          filter_args['id_submodulo__nombre_submodulo__icontains'] = submodulo_param
      if tipo_servidor_param:
          filter_args['tipo_servidor_plataforma__icontains'] = tipo_servidor_param
      if sistema_param:
          filter_args['id_sistema__nombre_sistema__icontains'] = sistema_param

      # Se aplican los argumentos para filtrar las plataformas
      plataformas = plataformas.filter(**filter_args)

  context = {
      'plataformas': plataformas,
      'plataforma_param': plataforma_param,
      'modulo_param': modulo_param,
      'submodulo_param': submodulo_param,
      'tipo_servidor_param': tipo_servidor_param,
      'sistema_param': sistema_param,
  }

  return render(request, 'all_ambientes.html', context) """



@login_required
def detalles(request, id_plataforma):
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




