from django.shortcuts import render



def statistics(request):
    
    data = {
        
    }
    
    return render(request, "studio/studio.html" , context=data)