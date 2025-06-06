# BLOCKCAST Node Manager

Script bash interaktif untuk membantu mengelola node Blockcast secara mudah dan cepat.  
Created by Moaru

📢 Telegram: [@airdropalc](https://t.me/airdropalc)

---

## 📦 Fitur

- Install dependencies (Docker, git, dll)
- Clone repo Blockcast beacon
- Jalankan node secara otomatis
- Inisialisasi node (`blockcast init`)
- Cek log node
- Hentikan dan hapus node dengan aman

---

## 🖥️ Minimum VPS Requirements
```
OS      : Ubuntu 20.04 atau lebih baru
CPU     : Minimal 2 vCPU
RAM     : Minimal 4 GB
Storage : Minimal 50 GB SSD
Network : Koneksi internet stabil
Akses   : Root atau user dengan sudo privileges
```

## 🚀 Cara Penggunaan

1. Daftar menggunakan google/gmail [https://app.blockcast.network/dashboard](https://app.blockcast.network?referral-code=qAxYV4)

2. Masuk ke VPS dan Buat screen lebih dulu
   ```bash
   screen -S blockcast
   ```

3. Clone repo ini:
   ```bash
   git clone https://github.com/moarunocounter/BLOCKCAST.git && cd BLOCKCAST && chmod +x blockcast.sh && ./blockcast.sh
   ```

4. Pergi ke Web Blockcast dan Masukkan Hardware ID serta Challenge key yang sudah kalian buat diVPS tadi.
