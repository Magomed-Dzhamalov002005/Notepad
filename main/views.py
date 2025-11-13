from django.utils import timezone
from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from .models import Note
from .forms import NoteAddingForm, NoteEditingForm
from datetime import datetime


today = datetime.now()

def home(request):
    
    current_notes = []
    if request.user.is_authenticated:
        current_notes = Note.objects.filter(dateStart__lte=today, dateEnd__gte=today, author=request.user.pk)   
    
    data = {
        'current_notes': current_notes,
    }
    
    return render(request, "main/index.html", context=data)


@login_required(login_url='auth:login')
def tasks(request):
    
    notes = []
    if request.user.is_authenticated:
        notes = Note.objects.filter(author=request.user.pk)
    
    data = {
        'notes':notes,
    }
    
    return render(request, 'main/tasks.html', context=data)


@login_required(login_url='auth:login')
def new_task(request):
    
    form = NoteAddingForm()
    
    if request.method == "POST":
        
        form = NoteAddingForm(request.POST)
        
        try:
            if form.is_valid():
                note = form.save(commit=False)
                note.author = request.user
                note.save()
                return redirect('main:home')
        except Exception:
            message = "Form is not correct"
            
    data = {
        'form': form,
    }
    
    return render(request, 'main/new_task.html', context=data)


@login_required(login_url='auth:login')
def task(request, note_pk):
    
    note = Note.objects.get(pk=note_pk)
    
    if request.method == "POST":
        
        completing_task = request.POST.get('complete')
        
        if completing_task:
            note.taskIsComplete = True
            note.save()
            return redirect("main:task", note.pk)
    
    data = {
        'note': note,
    }
    
    return render(request, 'main/task.html', context=data)


@login_required(login_url='auth:login')
def edit_task(request, note_pk):
    
    note = Note.objects.get(pk=note_pk)
    note_form = NoteEditingForm(instance=note)
    
    if request.POST:
        
        edit_form = NoteEditingForm(request.POST, instance=note)
        
        if edit_form.is_valid:
            edit_form.save()
            return redirect("main:task", note.pk)
    
    data = {
        'note': note,
        'note_form': note_form,
    }
    
    return render(request, 'main/edit_task.html', context=data)