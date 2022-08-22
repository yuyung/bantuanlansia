from django import forms 
from django.forms import widgets
from .models import DataKriteria

class FormDataKriteria(forms.ModelForm):
	class Meta:
		model = DataKriteria
		fields = ('idkriteria', 'kodekriteria', 'namakriteria', 'bobot')

		widgets = {
			'idkriteria': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
			'kodekriteria': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
			'namakriteria': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
			'bobot': forms.TextInput(attrs={'class': 'form-control', 'type': 'number'}),
		}