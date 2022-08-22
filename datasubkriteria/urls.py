from django.urls import path
from . import views

urlpatterns = [
	path('', views.index),
	path('tambah_sub/', views.tambahsub),
	path('ganti/<int:id>/', views.ganti, name='ganti'),
	path('hilang/<int:id>/', views.hilang, name='hilang'),
]