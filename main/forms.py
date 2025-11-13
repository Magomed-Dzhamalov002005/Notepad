from django import forms
from django.contrib.auth.models import User
from .models import Note
from django.forms import MultiWidget



class NoteAddingForm(forms.ModelForm):
    
    dateStart = forms.DateTimeField(widget=forms.DateTimeInput(attrs={'type': 'datetime-local'}), label="Starting date")
    dateEnd = forms.DateTimeField(widget=forms.DateTimeInput(attrs={'type': 'datetime-local'}), label="Finishing date")
    
    class Meta:
        model = Note
        fields = ["title", "description", "dateStart", "dateEnd"]