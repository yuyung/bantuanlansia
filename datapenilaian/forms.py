from django import forms
from django.forms import widgets
from .models import DataPenilaian

class FormDataPenilaian(forms.ModelForm):
	class Meta:
		model = DataPenilaian
		fields = ('idpenilaian', 'kodealternatif', 'namawarga', 'statusrumah', 'fasilitasrumah', 'pekerjaan', 'penghasilan', 'tanggungan', 'kendaraan')

		widgets = {
			'idpenilaian': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
			'kodealternatif': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
			'namawarga': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
			'statusrumah': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
			'fasilitasrumah': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
			'pekerjaan': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
			'penghasilan': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
			'tanggungan': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
			'kendaraan': forms.TextInput(attrs={'class': 'form-control', 'type': 'text'}),
		}