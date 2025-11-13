from django.db import models
from django.contrib.auth.models import User


class Note(models.Model):

    title = models.CharField(max_length=149)
    description = models.TextField(max_length=1000, blank=True)
    author = models.ForeignKey(User, on_delete=models.CASCADE, default=1)
    addingDate = models.DateTimeField(auto_now=True)
    dateStart = models.DateTimeField()
    dateEnd = models.DateTimeField()
    taskIsComplete = models.BooleanField(default=False)
    
    def __str__(self):
        return (f"Note[PK:{self.pk}]: {self.title}; {self.addingDate}")