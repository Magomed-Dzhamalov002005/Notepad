from typing import Any
from django import forms
from django.core.exceptions import ValidationError
from django.contrib.auth.models import User
from django.contrib.auth.forms import AuthenticationForm, UserCreationForm


class LoginForm(AuthenticationForm):
    
    email = forms.CharField(widget=forms.EmailInput)
    
    class Meta:
        model = User
        fields = ["username", "email", "password"]


class RegisterForm(UserCreationForm):
    
    email = forms.CharField(widget=forms.EmailInput)
    password1 = forms.CharField(widget=forms.PasswordInput, label="password")
    password2 = forms.CharField(widget=forms.PasswordInput, label="confirm password")
    
    class Meta:
        model = User
        fields = ["username", "email", "password1", "password2"]
    
    def clean(self) -> dict[str, Any]:
        
        cleaned_data = super().clean()

        if cleaned_data.get("password1") != cleaned_data.get("password2"):
            raise ValidationError("Passwords does not match!")
        
        username = cleaned_data.get("username")
        password = cleaned_data.get("password1")
        email = cleaned_data.get("email")
        
        return cleaned_data