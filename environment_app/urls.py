from django.urls import path
from . import views


urlpatterns = [
    path('', views.main, name='main'),
    path('ambienteQA/', views.plataformas, name='ambienteQA'),
    path('ambienteQA/detalles/<int:id_plataforma>', views.detalles, name='detalles'),
    
]