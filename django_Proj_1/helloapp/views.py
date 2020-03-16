from django.shortcuts import render
from django.http import HttpResponse

def hello_world(request):
        html = "<html><body>Hello World! DJANGO IS AWSUM</body></html>"
        return HttpResponse(html)
def goodbye_world(request):
	html = "<html><body> Goodbye Django World :( </body></html>"
	return HttpResponse(html)


# Create your views here.
