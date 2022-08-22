from django.shortcuts import render, redirect
from .forms import FormDataWarga
from .models import DataWarga

# Create your views here.
def index(request):
	datawarga = DataWarga.objects.all()
	context = {'datawarga':datawarga}

	return render(request, 'datawarga/index.html', context)

def tambah(request):
	form = FormDataWarga()
	if request.method == 'POST':
		form = FormDataWarga(request.POST)
		print(form.is_valid())
		print(form.errors)
		if form.is_valid():
			form.save()
			return redirect('/datawarga/')
			
	return render(request, 'datawarga/tambah_data.html', {'form': form})

def hapus(request, id):
	datawarga = DataWarga.objects.get(pk=id)
	datawarga.delete()
	return redirect('/datawarga/')

def ubah(request, id=0):
	form = FormDataWarga()
	if request.method == 'POST':
		if id == 0:
			form = FormDataWarga(request.POST)
		else:
			datawarga = DataWarga.objects.get(pk=id)
			form = FormDataWarga(request.POST, instance = datawarga)
			form.save()
		return redirect('/datawarga/')
	else:
		if id == 0:
			form = FormDataWarga()
		else:
			datawarga = DataWarga.objects.get(pk=id)
			form = FormDataWarga(instance = datawarga)
		return render(request, "datawarga/tambah_data.html", {'form':form})