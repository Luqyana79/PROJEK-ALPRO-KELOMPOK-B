# Menghitung jumlah kata dan jumlah kalimat pada soal nomor 1
teks <- "Masukkan Teks"
jumlah_kata <- length(strsplit(teks, " ")[[1]])
jumlah_kalimat <- lengths(regmatches(teks, gregexpr("\\.", teks)))

cat("Teks tersebut memuat",
    jumlah_kalimat,
    "kalimat dan",
    jumlah_kata,
    "kata.")

#Contoh 1
teks <- "Kenaikan harga bensin yang terjadi belakangan ini membuat masyarakat mengeluhkan meningkatnya biaya transportasi dan kebutuhan sehari-hari. Banyak pengendara merasa pengeluaran mereka menjadi lebih besar dibandingkan sebelumnya. Kondisi ini juga berdampak pada naiknya harga beberapa kebutuhan pokok di pasaran."
jumlah_kata <- length(strsplit(teks, " ")[[1]])
jumlah_kalimat <- lengths(regmatches(teks, gregexpr("\\.", teks)))

cat("Teks tersebut memuat",
    jumlah_kalimat,
    "kalimat dan",
    jumlah_kata,
    "kata.")

#contoh 2
teks <- "Harga BBM jenis Pertamax mengalami kenaikan dari Rp12.300 menjadi Rp16.250 per liter, sedangkan Pertalite tetap bertahan di harga sebelumnya. Kenaikan ini terjadi akibat meningkatnya harga minyak dunia dan beban subsidi energi yang semakin besar. Kondisi tersebut membuat masyarakat khawatir karena biaya transportasi dan kebutuhan sehari-hari ikut meningkat."
jumlah_kata <- length(strsplit(teks, " ")[[1]])
jumlah_kalimat <- lengths(regmatches(teks, gregexpr("\\.", teks)))

cat("Teks tersebut memuat",
    jumlah_kalimat,
    "kalimat dan",
    jumlah_kata,
    "kata.")

#Contoh 3
teks <- "Perkembangan teknologi kecerdasan buatan atau Artificial Intelligence (AI) semakin pesat dan mulai digunakan dalam berbagai bidang, seperti pendidikan, kesehatan, dan komunikasi. Banyak perusahaan teknologi kini berlomba menciptakan inovasi baru agar pekerjaan manusia dapat dilakukan dengan lebih cepat dan efisien. Namun, sebagian masyarakat juga khawatir karena perkembangan teknologi dapat mengurangi beberapa jenis lapangan pekerjaan di masa depan."
jumlah_kata <- length(strsplit(teks, " ")[[1]])
jumlah_kalimat <- lengths(regmatches(teks, gregexpr("\\.", teks)))

cat("Teks tersebut memuat",
    jumlah_kalimat,
    "kalimat dan",
    jumlah_kata,
    "kata.")
