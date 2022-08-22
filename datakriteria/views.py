from django.shortcuts import render, redirect
from .forms import FormDataKriteria
from .models import DataKriteria

# Create your views here.
def index(request):
	datakriteria = DataKriteria.objects.all()
	context = {'datakriteria':datakriteria}

	return render(request, 'datakriteria/index.html', context)

def tambahkriteria(request):
	form = FormDataKriteria()
	if request.method == 'POST':
		form =FormDataKriteria(request.POST)
		print(form.is_valid())
		print(form.errors)
		if form.is_valid():
			form.save()
			return redirect('/datakriteria/')

	return render(request, 'datakriteria/tambah_kriteria.html', {'form': form})

def delete(request, id):
	datakriteria = DataKriteria.objects.get(pk=id)
	datakriteria.delete()
	return redirect('/datakriteria/')

def edit(request, id=0):
	form =FormDataKriteria()
	if request.method == 'POST':
		if id == 0:
			form = FormDataKriteria(request.POST)
		else:
			datakriteria = DataKriteria.objects.get(pk=id)
			form = FormDataKriteria(request.POST, instance = datakriteria)
			form.save()
		return redirect('/datakriteria/')
	else:
		if id == 0:
			form =FormDataKriteria()
		else:
			datakriteria = DataKriteria.objects.get(pk=id)
			form = FormDataKriteria(instance = datakriteria)
		return render(request, "datakriteria/tambah_kriteria.html", {'form':form})