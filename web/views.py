from django.http import HttpResponse


def index(request):
    # import ipdb; ipdb.set_trace()
    return HttpResponse('Hello, World!')
