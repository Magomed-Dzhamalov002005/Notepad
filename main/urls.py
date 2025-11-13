from django.urls import path
from . import views

app_name = 'main'

urlpatterns = [
    path('', views.home, name="home"),
    path('tasks/', views.tasks, name="tasks"),
    path('new_task/', views.new_task, name="new_task"),
    path('task/<int:note_pk>/', views.task, name="task"),
]
