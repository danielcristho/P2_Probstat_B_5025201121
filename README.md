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

    - Carilah nilai t (p-value):

    ```r
    #B
    h = dataFrame$y - dataFrame$x
    t1 = mean(h)
    t2 = mean(h[1:6])
    t3 = 6
    t4 = sd(h[1:6])
    tValue = (t2-t1) / (t4/sqrt(t3))
    tValue

    pValue = 2*pt(-abs(t), df = t3-1)
    pValue
    ```

    result:
    ![](https://github.com/danielcristho/P2_Probstat_B_5025201121/blob/main/src/no1-b.png)

     - tentukanlah apakah terdapat pengaruh yang signifikan secara statistika
   dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan
   aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada
   pengaruh yang signifikan secara statistika dalam hal kadar saturasi
   oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”, dimana disini saya menggunakan function "alternative" untuk print output yang berupa string:

    ```r
    #C
    install.packages("BSDA")
    library(BSDA)
    tValue(h, alternative = 'two.sided', n = tn)
    ```
    result:
    ```r
    0.1915272
    
    ```
2. Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.
Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk
mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata
23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan library seperti referensi pada modul).

    - Apakah Anda setuju dengan klaim tersebut?: Setuju
    - Jelaskan maksud dari output yang dihasilkan!:
      Dik:
      - rata-Rata (X̄) = 23500
      - standar deviasi(σ) = 3900
      - n = 100
      sehingga hipotesis adalah H0 : μ = 20000 Alternatif hipotesisnya yaitu H1 : μ > 20000
      ```r

      #B
      library(BSDA)

      tsum.test(
      mean.x = 23500, 
      s.x = sd(3900), 
      n.x = 100
      )
      ```

  - Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!: kesimpulannya adalah mobil yang digunakan rata ratanya lebih dari 20.000 km/tahun