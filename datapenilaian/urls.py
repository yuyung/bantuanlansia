from django.urls import path
from . import views

urlpatterns = [
	path('', views.index),
	path('tambah_penilaian/', views.tambah),
	path('raonok/<int:id>/', views.raonok, name='raonok'),
	path('ilang/<int:id>/', views.ilang, name='ilang'),
]