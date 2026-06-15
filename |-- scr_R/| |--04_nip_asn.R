#program 4
nip <- readline("Masukkan NIP ASN: ")

if (nchar(nip) != 18 || grepl("[^0-9]", nip)) {
  cat("Error: NIP harus terdiri dari tepat 18 digit angka.\n")
} else {
  tahun   <- substr(nip, 1, 4)
  bulan   <- as.integer(substr(nip, 5, 6))
  tanggal <- as.integer(substr(nip, 7, 8))
  
  if (bulan < 1 || bulan > 12) {
    cat("Error: Bulan pada NIP tidak valid (harus 01–12).\n")
  } else {
    if (bulan %in% c(1, 3, 5, 7, 8, 10, 12)) {
      maks_hari <- 31
    } else if (bulan %in% c(4, 6, 9, 11)) {
      maks_hari <- 30
    } else if (bulan == 2) {
      maks_hari <- 29
    }
    
    if (tanggal < 1 || tanggal > maks_hari) {
      cat(paste0("Error: Tanggal pada NIP tidak valid untuk bulan ini (harus 01–",
                 sprintf("%02d", maks_hari), ").\n"))
    } else {
      if (bulan == 1) {
        nama_bulan <- "Januari"
      } else if (bulan == 2) {
        nama_bulan <- "Februari"
      } else if (bulan == 3) {
        nama_bulan <- "Maret"
      } else if (bulan == 4) {
        nama_bulan <- "April"
      } else if (bulan == 5) {
        nama_bulan <- "Mei"
      } else if (bulan == 6) {
        nama_bulan <- "Juni"
      } else if (bulan == 7) {
        nama_bulan <- "Juli"
      } else if (bulan == 8) {
        nama_bulan <- "Agustus"
      } else if (bulan == 9) {
        nama_bulan <- "September"
      } else if (bulan == 10) {
        nama_bulan <- "Oktober"
      } else if (bulan == 11) {
        nama_bulan <- "November"
      } else if (bulan == 12) {
        nama_bulan <- "Desember"
      }
      
      cat(paste0("Tanggal lahir: ", tanggal, " ", nama_bulan, " ", tahun, "\n"))
    }
  }
}
