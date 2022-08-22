from django import forms
from django.contrib.auth.models import User

class FormLogin(forms.Form):
	username = forms.CharField(
		widget= forms.TextInput(attrs={'class': 'form-control', 'type': 'text', 'id': 'username', 'placeholder': 'Your Username'}),
	)
	password = forms.CharField(
		widget= forms.TextInput(attrs={'class': 'form-control', 'type': 'password', 'id': 'password', 'placeholder': 'Your Password'}),
	)