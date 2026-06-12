import math

#menghitung persamaan kuadrat
# Mendefinisikan nilai setiap variabel
a = float(input("Masukkan nilai a: "))
b = float(input("Masukkan nilai b: "))
c = float(input("Masukkan nilai c: "))

# identifikasi bentuk persamaan
if a == 0:
    print("bukan persamaan kuadrat")
else:
    Diskriminan = b**2 - 4*a*c

    # Pengecekan kondisi akar
    if Diskriminan > 0:
        x1 = (-b + math.sqrt(Diskriminan)) / (2*a)
        x2 = (-b - math.sqrt(Diskriminan)) / (2*a)

        # Menampilkan hasil dengan format 3 desimal
        print(f"\nPersamaan memiliki akar-akar real:")
        print(f"x1 = {x1:.3f}")
        print(f"x2 = {x2:.3f}")
    elif Diskriminan == 0:
        x = -b / (2*a)
        print(f"\nPersamaan memiliki akar tunggal:")
        print(f"x = {x:.3f}")
    else:
        print("\nPersamaan hanya memiliki akar-akar imajiner")
