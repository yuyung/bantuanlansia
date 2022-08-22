from django.shortcuts import render, redirect
from .forms import FormDataSubKriteria
from .models import DataSubKriteria

# Create your views here.
def index(request):
	datasubkriteria = DataSubKriteria.objects.all()
	# context = {'datasubkriteria':datasubkriteria}

	return render(request, 'datasubkriteria/index.html', {'data':datasubkriteria})


def tambahsub(request):
	form =FormDataSubKriteria()
	if request.method == 'POST':
		form = FormDataSubKriteria(request.POST)
		print(form.is_valid())
		print(form.errors)
		if form.is_valid():
			form.save()
			return redirect('/datasubkriteria/')

	return render(request, 'datasubkriteria/tambah_sub.html', {'form':form})

def hilang(request, id):
	datasubkriteria = DataSubKriteria.objects.get(pk=id)
	datasubkriteria.delete()
	return redirect('/datasubkriteria/')

def ganti(request, id=0):
	form =FormDataSubKriteria()
	if request.method == 'POST':
		if id == 0:
			form = FormDataSubKriteria(request.POST)
		else:
			datasubkriteria = DataSubKriteria.objects.get(pk=id)
			form = FormDataSubKriteria(request.POST, instance = datasubkriteria)
			form.save()
		return redirect('/datasubkriteria/')
	else:
		if id == 0:
			form =FormDataSubKriteria()
		else:
			datasubkriteria = DataSubKriteria.objects.get(pk=id)
			form = FormDataSubKriteria(instance = datasubkriteria)
		return render(request, "datasubkriteria/tambah_sub.html", {'form':form})