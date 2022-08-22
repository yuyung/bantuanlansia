from multiprocessing import context
from django.shortcuts import render
from datapenilaian.models import DataPenilaian
from datasubkriteria.models import DataSubKriteria
import numpy as np

class hasilwp:
    def __init__(self,nik,nama,s,v):
        self.nik = nik
        self.nama = nama
        self.s = s
        self.v = v

# Create your views here.
def index(request):
    data = DataPenilaian.objects.all()
    tempData = np.zeros(shape=(len(data),6))
    tempNik = []
    tempNama = []
    S = np.zeros(len(data))
    V = np.zeros(len(data))
    pangkat = np.array([0.15, 0.15, 0.25, 0.2, 0.2, -0.05])

    if len(data) > 0:
        for i in range (len(data)):
            temp1 = getNilai(data[i].statusrumah)
            temp2 = getNilai(data[i].fasilitasrumah)
            temp3 = getNilai(data[i].pekerjaan)
            temp4 = getNilai(data[i].tanggungan)
            temp5 = cocokGaji(data[i].penghasilan)
            temp6 = getNilai(data[i].kendaraan)
            tempNik.append(data[i].kodealternatif)
            tempNama.append(data[i].namawarga)

            tempData[i,0] = temp1[0].nilai
            tempData[i,1] = temp2[0].nilai
            tempData[i,2] = temp3[0].nilai
            tempData[i,3] = temp4[0].nilai
            tempData[i,4] = temp5
            tempData[i,5] = temp6[0].nilai
    
    for i in range(len(tempData)):
        tempS = 1
        for j in range(len(tempData[0])):
            tempS *= (tempData[i,j]**pangkat[j])
        S[i] = tempS
    
    for i in range(len(tempData)):
        V[i] = S[i]/np.sum(S)
    
    hasil = []
    for i in range(len(tempData)):
        hasil.append(
            hasilwp(
                tempNik[i],
                tempNama[i],
                S[i],
                V[i]
            )
        )
    # print(V)
    # print(np.round(np.sum(V)))
    # print(tempNama)
    # print(tempNik)
    final = sorted(hasil, key=lambda object1: object1.v, reverse=True)
        
    return render(request, 'datahasil/index.html', {'data':final})

def cocokGaji(kategori):
    res = 0
    if kategori == "Diatas 3 jt":
        res = 1
    elif kategori == "2 jt - 2,5 jt":
        res = 2
    elif kategori == "1 jt - 1,5 jt":
        res = 3
    elif kategori == "Dibawah 1 jt":
        res = 4
    return res

def getNilai(nilai):
	res = DataSubKriteria.objects.filter(namasubkriteria=nilai)
	return res