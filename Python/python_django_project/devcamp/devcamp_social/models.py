import datetime

from django.db import models
from django.utils import timezone


class UserPost(models.Model):

    def __str__(self):
        return f'{str(self.pk)} -- {self.title}'

    def was_published_recently(self):
        return self.posted_on >= timezone.now() - datetime.timedelta(days=1)

    title = models.CharField(max_length=80)
    content = models.CharField(max_length=200)
    posted_on = models.DateTimeField('date published')


class PostComment(models.Model):
    content = models.CharField(max_length=200)
    user = models.CharField(max_length=80, default="anonymous")
    post = models.ForeignKey(UserPost, on_delete=models.CASCADE)
    posted_on = models.DateTimeField('date commented')

    def __str__(self):
        return f'{self.pk} -- "{self.content}" - by - {self.user}'
