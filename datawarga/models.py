from django.db import models

# Create your models here.
class DataWarga(models.Model):

	idwarga = models.CharField(max_length=100)
	no = models.CharField(max_length=100)
	nik = models.CharField(max_length=100)
	namawarga = models.CharField(max_length=100)
	umur = models.CharField(max_length=100)
	telepon = models.CharField(max_length=100)
	statusrumah = models.CharField(null=True, max_length=100)
	fasilitasrumah = models.CharField(null=True, max_length=100)
	pekerjaan = models.CharField(null=True, max_length=100)
	penghasilan = models.CharField(null=True, max_length=100)
	tanggungan = models.CharField(null=True, max_length=100)
	kendaraan = models.CharField(null=True, max_length=100)