#Program Klasifikasi Cluster 3 Dimensi
#FUNGSI: menghitung jarak Euclidean antara dua titik 3 Dimensi
hitung_jarak <- function(titik_U, pusat_cluster) {
  x1<-titik_U[1];y1<-pusat_cluster[1]
  x2<-titik_U[2];y2<-pusat_cluster[2]
  x3<-titik_U[3];y3<-pusat_cluster[3]
  
  jarak<-sqrt(
    (x1-y1)^2+
      (x2-y2)^2+
      (x3-y3)^2
  )
  return(jarak)
}

#Fungsi menentukan cluster dari titik U
klasifikasi_cluster<-function(titik_U){
#Konstanta pusat masing-masing cluster
  pusat_A<-c(2,1,3)
  pusat_B<-c(1,-4,6)
  pusat_C<-c(-2,3,-2)
  
#Hitung jarak ke tiap pusat cluster
  jarak_A<-hitung_jarak(titik_U,pusat_A)
  jarak_B<-hitung_jarak(titik_U,pusat_B)
  jarak_C<-hitung_jarak(titik_U,pusat_C)
  
#Tentukan cluster terdekat
  if(jarak_A<jarak_B&&jarak_A<jarak_C){
    cluster<-"A"
  }else if(jarak_B<jarak_A&&jarak_B<jarak_C){
    cluster<-"B"
  }else if(jarak_C < jarak_A && jarak_C < jarak_B){
    cluster<-"C"
  }else{
    cluster<-"tidak dapat ditentukan"
  }
      
  
#Kembalikan hasil sebagai list
  return(list(
    cluster=cluster,
    jarak_A=jarak_A,
    jarak_B=jarak_B,
    jarak_C=jarak_C
  ))
}

#Input angka
x1<-as.numeric(readline("Masukkan x1: "))
x2<-as.numeric(readline("Masukkan x2: "))
x3<-as.numeric(readline("Masukkan x3: "))

#Simpan sebagai vector 3 elemen
titik_U<-c(x1,x2,x3)

#Panggil fungsi klasifikasi
hasil<-klasifikasi_cluster(titik_U)

#Output hasil
cat(sprintf("\nTitik U(%.4g,%.4g,%.4g)\n",x1,x2,x3))
cat(sprintf("Jarak ke Cluster A:%.4f\n",hasil$jarak_A))
cat(sprintf("Jarak ke Cluster B:%.4f\n",hasil$jarak_B))
cat(sprintf("Jarak ke Cluster C:%.4f\n",hasil$jarak_C))
cat(sprintf("\nTitik U tergolong Cluster %s\n",hasil$cluster))
