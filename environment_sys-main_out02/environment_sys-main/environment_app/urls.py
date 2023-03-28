from django.urls import path, include
from .views import main, detalles, plataformas, exit


urlpatterns = [
    path('', main, name='main'),
    path('ambienteQA/', plataformas, name='ambienteQA'),
    path('ambienteQA/detalles/<int:id_plataforma>/', detalles, name='detalles'),
    path('logout/', exit, name='exit'),    
]
