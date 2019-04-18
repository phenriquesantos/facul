from django.shortcuts import render

def index(request):
    return render(request, 'index.html')


def pagina_2(request):
    return render(request, 'pagina-2.html')


def pagina_3(request):
    return render(request, 'pagina-3.html')