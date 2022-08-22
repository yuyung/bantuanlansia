from django.db import models

# Create your models here.
class DataSubKriteria(models.Model):

	idsubkriteria = models.CharField(max_length=100)
	idkriteria = models.CharField(max_length=100)
	no = models.CharField(max_length=100)
	namakriteria = models.CharField(null=True, max_length=100)
	kodekriteria = models.CharField(null=True, max_length=100)
	namasubkriteria = models.CharField(null=True, max_length=100)
	nilai = models.CharField(null=True, max_length=100)
	class Meta:
		db_table = "datasubkriteria"
