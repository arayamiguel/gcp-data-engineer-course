import functions_framework

@functions_framework.http
def hello_http(request):
    return "¡Hola desde CGP Cloud Functions!"
