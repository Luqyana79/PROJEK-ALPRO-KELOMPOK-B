#Program Klasifikasi Cluster 3 Dimensi
import math
#Fungsi menghitung jarak Euclidean antara dua titik 3D
def hitung_jarak(titik_U,pusat_cluster):
    x1,x2,x3= titik_U          #koordinat titik U
    y1,y2,y3=pusat_cluster     #koordinat pusat cluster
    jarak=math.sqrt(
        (x1-y1)**2 +
        (x2-y2)**2 +
        (x3-y3)**2
    )
    return jarak

#Fungsi menentukan cluster dari titik U
def klasifikasi_cluster(titik_U):
#Konstanta pusat masing-masing cluster
    pusat_A=(2,1,3)
    pusat_B=(1,-4,6)
    pusat_C=(-2,3,-2)

#Hitung jarak ke tiap pusat cluster
    jarak_A=hitung_jarak(titik_U,pusat_A)
    jarak_B=hitung_jarak(titik_U,pusat_B)
    jarak_C=hitung_jarak(titik_U,pusat_C)

#Tentukan cluster terdekat
    if jarak_A<jarak_B and jarak_A<jarak_C:
        cluster="A"
    elif jarak_B<jarak_A and jarak_B<jarak_C:
        cluster="B"
    elif jarak_C<jarak_A and jarak_C<jarak_B:
        cluster="C"
    else:
        cluster="Tidak dapat ditentukan"

    return cluster,jarak_A,jarak_B,jarak_C

#Input dari pengguna
x1=float(input("Masukkan x1:"))
x2=float(input("Masukkan x2:"))
x3=float(input("Masukkan x3:"))

#Simpan sebagai tuple 3 elemen
titik_U=(x1,x2,x3)

#Panggil fungsi klasifikasi
cluster,jarak_A,jarak_B,jarak_C=klasifikasi_cluster(titik_U)

#Output hasil
print(f"Titik U({x1}, {x2}, {x3})")
print(f"Jarak ke Cluster A:{jarak_A:.4f}")
print(f"Jarak ke Cluster B:{jarak_B:.4f}")
print(f"Jarak ke Cluster C:{jarak_C:.4f}")
print(f"Titik U tergolong Cluster {cluster}")
