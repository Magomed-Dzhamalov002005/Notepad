from django.shortcuts import render
# from django.contrib.auth.models import User
from authentication.forms import RegisterForm
from main.models import Note



def statistics(request):
    
    note_count = Note.objects.filter(author=request.user).count()
    
    data = {
        'note_count': note_count
    }
    
    return render(request, "studio/studio.html" , context=data)


def edit_account(request, username):
    
    user_form = RegisterForm(instance=request.user)
    
    data = {
        'user_form': user_form
    }
    
    return render(request, 'studio/account.html', context=data)