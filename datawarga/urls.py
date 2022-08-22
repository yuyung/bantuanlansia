from django.urls import path
from . import views

urlpatterns = [
	path('', views.index),
	path('tambah_data/', views.tambah),
	path('ubah/<int:id>/', views.ubah, name='ubah'),
	path('hapus/<int:id>/', views.hapus, name='hapus'),
]