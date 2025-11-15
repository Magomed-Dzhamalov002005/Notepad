from django.shortcuts import get_object_or_404
from django.http import FileResponse
from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from .models import Note
from .forms import NoteAddingForm, NoteEditingForm
from datetime import datetime
from django.contrib import messages


today = datetime.now()

def home(request):
    
    current_notes = []
    if request.user.is_authenticated:
        current_notes = Note.objects.filter(dateStart__lte=today, dateEnd__gte=today, author=request.user.pk, taskIsComplete=False)   
    
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
        
        form = NoteAddingForm(request.POST, request.FILES)
        
        try:
            if form.is_valid():
                
                if form.cleaned_data["dateStart"] >= form.cleaned_data["dateEnd"]:
                    messages.error(request, "Starting date can not be ahead of ending!")
                    return redirect("main:new_task")
                
                note = form.save(commit=False)
                note.author = request.user
                note.save()
                return redirect('main:home')
        except Exception:
            messages.error(request, "Form is not correct")
            
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


def file_download(request, pk):

    document = get_object_or_404(Note, pk=pk)
    file_path = document.file.path
    
    file_obj = open(file_path, "rb")
    
    return FileResponse(file_obj, as_attachment=True, filename=document.file.name)


@login_required(login_url='auth:login')
def edit_task(request, note_pk):
    
    note = Note.objects.get(pk=note_pk)
    note_form = NoteEditingForm(instance=note)
    
    if request.POST:
        
        editing_form = request.POST.get("edit_form")
        
        if editing_form:
            edit_form = NoteEditingForm(request.POST, request.FILES, instance=note)
        
            if edit_form.is_valid:
                edit_form.save()
                return redirect("main:task", note.pk)
        
        
        delete_post = request.POST.get("delete-form")
        
        if delete_post:
            note.delete()
            return redirect("main:tasks")
    
    data = {
        'note': note,
        'note_form': note_form,
    }
    
    return render(request, 'main/edit_task.html', context=data)