# P2_B_Probstat_5025201121
Praktikum 2 [Probabilitas & Statistika]

| Nama                      | NRP           |
|---------------------------|---------------|
|Gloriyano C. Daniel Pepuho |5025201121     |

## Soal & Pembahasan

1. Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap
kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel
sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat
kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut
diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali
kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden
mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴.
Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari
responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah
melakukan aktivitas 𝐴 sebanyak 70.

   - Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel
     diatas:

    ```r
    #A
    jumlahResponden = c(1,2,3,4,5,6,7,8,9)
    x = c(78, 75, 67, 77, 70, 72, 78, 74, 77)
    y = c(100, 95, 70, 90, 90, 90, 89, 90, 100)
    dataFrame = data.frame(jumlahResponden, x, y)

    findDeviasi = sd(dataFrame$x-dataFrame$y)
    findDeviasi
    ```
    result:
    ```r
    6.35959467611297
    ```