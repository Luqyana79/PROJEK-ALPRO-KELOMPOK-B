# Bentuk umum nomor 1
teks <- "Masukkan Teks"
jumlah_kata <- length(strsplit(teks, " ")[[1]])
jumlah_kalimat <- lengths(regmatches(teks, gregexpr("\\.", teks)))

cat("Teks tersebut memuat",
    jumlah_kalimat,
    "kalimat dan",
    jumlah_kata,
    "kata.")


