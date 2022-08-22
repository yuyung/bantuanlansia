from django import forms
from django.forms import widgets
from .models import DataWarga

class FormDataWarga(forms.ModelForm):
    class Meta:
        model = DataWarga
        fields = ('idwarga', 'no', 'nik', 'namawarga', 'umur', 'telepon', 'statusrumah', 'fasilitasrumah', 'pekerjaan', 'penghasilan', 'tanggungan', 'kendaraan')
        
        widgets = {
            'idwarga': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
            'no': forms.TextInput(attrs={'class': 'form-control', 'type': 'number'}),
            'nik': forms.TextInput(attrs={'class': 'form-control', 'type': 'number'}),
            'namawarga': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
            'umur': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
            'telepon': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
            'statusrumah': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
            'fasilitasrumah': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
            'pekerjaan': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
            'penghasilan': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
            'tanggungan': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
            'kendaraan': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
        }