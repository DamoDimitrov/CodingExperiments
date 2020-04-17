from django.http import HttpResponse

from .models import UserPost


def index(request):
    return HttpResponse("Hello, world. You're at the devcamps index.")


def post_details(request, post_id):
    post_object = UserPost.objects.get(id=post_id)

    return HttpResponse("Post Title: {}".format(post_object.title))
