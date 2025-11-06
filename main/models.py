from django.db import models
from django.contrib.auth.models import User


class Note(models.Model):

    title = models.CharField(max_length=149)
    author = models.ForeignKey(User, on_delete=models.CASCADE, default=User.objects.get(pk=1).pk)
    addingDate = models.DateTimeField(auto_now=True)
    dateStart = models.DateTimeField(auto_now_add=True)
    dateEnd = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return (f"Note[PK:{self.pk}]: {self.title}; {self.addingDate}")