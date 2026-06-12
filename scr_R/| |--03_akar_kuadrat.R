#mencari aka-akar real persamaan kuadrat
#mendefinisikan variabel
a <- as.numeric(readline(prompt = "masukkan nilai a: "))
b <- as.numeric(readline(prompt = "masukkan nilai b: "))
c <- as.numeric(readline(prompt = "masukkan nilai c: "))

#mengidentifikasi persamaan kuadrat
if (a == 0) {
  cat("persamaan bukan persamaan kuadrat\n")
} else {
  Diskriminan <- b^2 - 4*a*c
}

#mencari akar-akar persamaan
if (Diskriminan >= 0) {
  x1 <- (-b + sqrt(Diskriminan)) / (2*a)
  x2 <- (-b - sqrt(Diskriminan)) / (2*a)
  cat(sprintf("akar-akar real adalah: x1 = %.3f dan x2 = %.3f\n", x1, x2))
} else {
  cat("persamaan hanya mempunyai akar-akar imajiner\n")
}
 = %.3f dan x2 = %.3f\n", x1, x2))
} else {
  cat("persamaan hanya mempunyai akar-akar imajiner\n")
}
