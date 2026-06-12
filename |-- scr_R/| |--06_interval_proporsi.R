# Fungsi
hitung_interval <- function(p_hat, n, alpha) {
  
  if (alpha == 0.05) {
    z <- 1.96
  } else if (alpha == 0.10) {
    z <- 1.645
  }
  
  margin_error <- z * sqrt((p_hat * (1 - p_hat)) / n)
  
  batas_bawah <- p_hat - margin_error
  batas_atas <- p_hat + margin_error
  
  return(list(
    BB = batas_bawah, 
    BA = batas_atas
  )
  )
}

# Input
p_hat <- ("Input nilai p_hat")
n <- ("Input nilai n)
alpha <- ("Input nilai alpha")

# Validasi
if (p_hat < 0 || p_hat > 1) {
  cat("Error: p_hat harus berada antara 0 dan 1\n")
} else if (n <= 0) {
  cat("Error: ukuran sampel harus lebih dari 0\n")
} else if (alpha != 0.05 && alpha != 0.10) {
  cat("Error: alpha harus 0.05 atau 0.10\n")
} else {
  hasil <- hitung_interval(p_hat, n, alpha)
  
  #Menampilkan Hasil
  cat("Batas bawah =", hasil$BB, "\n")
  cat("Batas atas  =", hasil$BA, "\n")
  cat("Interval konfidensi = (", round(hasil$BB, 4), ", ", round(hasil$BA, 4), ")\n")
}
