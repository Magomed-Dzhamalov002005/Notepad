from django.urls import path
from . import views

app_name='studio'
urlpatterns = [
    path('', views.statistics, name="statistics"),
    path('edit/<str:username>', views.edit_account, name="edit_account"),
]
