from django.db import models

# Create your models here.
class DataKriteria(models.Model):
	
	idkriteria = models.CharField(max_length=100)
	kodekriteria = models.CharField(max_length=100)
	namakriteria = models.CharField(max_length=100)
	bobot = models.CharField(max_length=100)