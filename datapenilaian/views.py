from django.shortcuts import render, redirect
from .forms import FormDataPenilaian
from .models import DataPenilaian

# Create your views here.
def index(request):
	datapenilaian = DataPenilaian.objects.all()
	return render(request, 'datapenilaian/index.html', {'data':datapenilaian})

def tambah(request):
	form = FormDataPenilaian()
	if request.method == 'POST':
		form = FormDataPenilaian(request.POST)
		print(form.is_valid())
		print(form.errors)
		if form.is_valid():
			form.save()
			return redirect('/datapenilaian/')

	return render(request, 'datapenilaian/tambah_penilaian.html', {'form': form})

def ilang(request, id):
	datapenilaian = DataPenilaian.objects.get(pk=id)
	datapenilaian.delete()
	return redirect('/datapenilaian/')

def raonok(request, id=0):
	form = FormDataPenilaian()
	if request.method == 'POST':
		if id == 0:
			form = FormDataPenilaian(request.POST)
		else:
			datapenilaian = DataPenilaian.objects.get(pk=id)
			form = FormDataPenilaian(request.POST, instance = datapenilaian)
			form.save()
		return redirect('/datapenilaian')
	else:
		if id == 0:
			form = FormDataPenilaian()
		else:
			datapenilaian = DataPenilaian.objects.get(pk=id)
			form = FormDataPenilaian(instance = datapenilaian)
		return render(request, "datapenilaian/tambah_penilaian.html", {'form':form})