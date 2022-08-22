from django import forms
from django.forms import widgets
from .models import DataSubKriteria

class FormDataSubKriteria(forms.ModelForm):
	class Meta:
		model = DataSubKriteria
		fields = ('idsubkriteria', 'idkriteria', 'no', 'namakriteria', 'kodekriteria', 'namasubkriteria', 'nilai')

	widgets = {
		'idsubkriteria': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
		'idkriteria': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
		'no': forms.TextInput(attrs={'class': 'form-control', 'type': 'number'}),
		'namakriteria': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
		'kodekriteria': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
		'namasubkriteria': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
		'nilai': forms.TextInput(attrs={'class': 'form-control', 'type': 'number'}),
	}