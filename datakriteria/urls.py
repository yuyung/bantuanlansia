from django.urls import path
from . import views

urlpatterns = [
	path('', views.index),
	path('tambah_kriteria/', views.tambahkriteria),
	path('edit/<int:id>/', views.edit, name='edit'),
	path('delete/<int:id>/', views.delete, name='delete')
]