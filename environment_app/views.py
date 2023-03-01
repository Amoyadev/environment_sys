from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from .models import Sistema, Modulo, Submodulo, Plataforma,Ip, Sw

# Create your views here.


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
        # print(union_sw_ip)
        # union_sw_ip = sw.union(ip, all=True)
    except Exception as e:
        print(e)
        sw = ''

    # print(sw)
    # print(ip)

    template = loader.get_template('detalles.html')
    context = {
        'myplatform': myplatform,
        'sw': sw,
        'ip': ip

    }
    return HttpResponse(template.render(context, request))


def main(request):
  template = loader.get_template('main.html')
  return HttpResponse(template.render())
