from django.urls import path

from .views import index, post_details

urlpatterns = [
    path('', index, name='index'),
    path('<int:post_id>details', post_details, name='post_details'),
]
