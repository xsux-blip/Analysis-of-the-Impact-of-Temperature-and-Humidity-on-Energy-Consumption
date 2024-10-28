# Analysis of the Impact of Temperature and Humidity on Energy Consumption
Penelitian ini bertujuan untuk mengetahui bagaimana suhu dan kelembaban dalam ruangan, khususnya di dapur, ruang tamu, dan ruang cuci, memengaruhi konsumsi energi.

## Analisis Model

### 1. Deskripsi Model
Model regresi linear yang dikembangkan bertujuan untuk memprediksi konsumsi energi peralatan rumah tangga (**Appliances**) dalam **Watt-hour (Wh)** berdasarkan beberapa variabel independen yang dinormalisasi, yaitu suhu dan kelembaban:

- **T1_norm, RH_1_norm** (dapur) dalam °C dan %
- **T2_norm, RH_2_norm** (ruang tamu) dalam °C dan %
- **T3_norm, RH_3_norm** (ruang cuci) dalam °C dan %
- **Temp_Diff**: Perbedaan suhu (°C)

### 2. Hasil VIF (Variance Inflation Factor)
Hasil VIF menunjukkan masalah multikolinearitas antar variabel:

- **T1_norm**: 13.42
- **RH_1_norm**: 14.23
- **T2_norm**: 19.18
- **RH_2_norm**: 13.36
- **T3_norm**: 6.70
- **RH_3_norm**: 4.79
- **Temp_Diff**: 2.28

Nilai VIF di atas 10 menunjukkan multikolinearitas tinggi, khususnya untuk **T2_norm**, **T1_norm**, dan **RH_1_norm**, yang dapat memengaruhi interpretasi koefisien dalam model.

### 3. Ringkasan Model Regresi
Berdasarkan ringkasan model regresi:

- **Intercept**: 243.04 Wh, menunjukkan konsumsi energi yang diprediksi ketika semua variabel independen bernilai nol.
- **Pengaruh Positif Signifikan**: Variabel **T1_norm** dan **RH_1_norm** berpengaruh positif signifikan pada konsumsi energi (nilai p < 0.001).
- **Pengaruh Negatif Signifikan**: Variabel **T2_norm** dan **RH_2_norm** memiliki pengaruh negatif signifikan.
- **T3_norm**: Pengaruh positif dengan nilai p > 0.05, artinya pengaruhnya tidak signifikan.
- **RH_3_norm dan Temp_Diff**: Memiliki nilai p tinggi, sehingga tidak signifikan dalam mempengaruhi konsumsi energi.

### 4. R-Squared
Nilai **R-squared sebesar 0.08614** menunjukkan bahwa model ini hanya mampu menjelaskan sekitar 8.6% variasi konsumsi energi, menunjukkan bahwa ada faktor lain yang mungkin berpengaruh.

### 5. Prediksi
Model ini juga digunakan untuk memprediksi konsumsi energi pada data baru dengan hasil berikut (dalam **Watt-hour (Wh)**):

- Untuk **T1_norm = 0.6**, konsumsi energi yang diprediksi adalah sekitar **155.81 Wh**.
- Untuk **T1_norm = 0.7**, konsumsi energi yang diprediksi adalah sekitar **181.49 Wh**.
- Untuk **T1_norm = 0.8**, konsumsi energi yang diprediksi adalah sekitar **196.24 Wh**.

Analisis ini memberikan wawasan mengenai pengaruh suhu dan kelembaban pada konsumsi energi, namun juga menunjukkan bahwa faktor tambahan mungkin diperlukan untuk model yang lebih akurat.
