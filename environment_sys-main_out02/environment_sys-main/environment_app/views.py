from django.shortcuts import render, redirect, get_object_or_404
from django.http import HttpResponse
from django.template import loader
from .models import Plataforma, Ip, Sw, Hw
from django.contrib.auth.decorators import login_required
from django.contrib.auth import logout
from django.db import connection
#For HwDetailView
""" from django.views.generic import DetailView """

# Create your views here.
import logging
logger = logging.getLogger(__name__)

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
def detalles(request, id_plataforma):
    myplatform = Plataforma.objects.get(id_plataforma=id_plataforma)

    try:
        sw = myplatform.sw_set.all()  # Here is SW
        ip = sw.first().ip_set.all()  # Here is ip
    except Exception:
        sw = ''
        ip = ''

    hw = myplatform.hw_set.all() # Here is HW

    context = {
        'myplatform': myplatform,
        'sw': sw,
        'ip': ip,
        'hw': hw # Add HW to context
    }

    template = loader.get_template('detalles.html')
    return HttpResponse(template.render(context, request)) """

""" @login_required
def detalles(request, id_plataforma):
    # myplatform = Plataforma.objects.select_related('sw_set').all()
    myplatform = Plataforma.objects.get(id_plataforma=id_plataforma)

    try:
        sw = myplatform.sw_set.all()  # Here is SW
        ip = sw.first().ip_set.all()  # Here is ip
        # print(union_sw_ip)
        # union_sw_ip = sw.union(ip, all=True)
    except Exception as e:
        print(e)
        ip = ""

    hw = myplatform.hw_set.all() # Here is HW
    # print(sw)
    # print(ip)

    template = loader.get_template('detalles.html')
    context = {
        'myplatform': myplatform,
        'sw': sw,
        'ip': ip,
        'hw': hw # Add HW to context

    }
    return HttpResponse(template.render(context, request)) """

@login_required
def detalles(request, id_plataforma):
    myplatform = Plataforma.objects.get(id_plataforma=id_plataforma)

    sw = myplatform.sw_set.all()
    hw = myplatform.hw_set.all()

    # Obtener la información de la dirección IP
    ips = []
    for s in sw:
        if s.ip_set.exists():
            ips.extend(s.ip_set.all())

    for x in sw:
        sw_ips = x.ip_set.all()
        ip_list = []
        for ip in sw_ips:
            ip_list.append(ip.ip)
        x.ip_sw = ", ".join(ip_list)

    template = loader.get_template('detalles.html')
    context = {
        'myplatform': myplatform,
        'sw': sw,
        'hw': hw,
    }
    return HttpResponse(template.render(context, request))










