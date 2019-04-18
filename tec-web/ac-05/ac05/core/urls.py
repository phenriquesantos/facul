from django.urls import path
from . import views
urlpatterns = [
    path('', views.index, name='index')
    ,path('pagina-2/', views.pagina_2, name="Pagina 2")
    ,path('pagina-3/', views.pagina_3, name="pagina 3")
]