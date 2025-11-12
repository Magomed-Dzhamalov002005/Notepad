from django.utils import timezone
from django.shortcuts import render
from .models import Note
import datetime


today = timezone.now().date()

def home(request):
    current_notes = Note.objects.filter(dateStart__lte=today, dateEnd__gte=today)
    data = {
        'current_notes': current_notes,
    }
    return render(request, "main/index.html", context=data)