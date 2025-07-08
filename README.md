# Blockcast Node Installer by MOARU

Script ini memudahkan Anda untuk menginstal dan mengelola node **Blockcast** secara otomatis menggunakan `docker-compose`.  
Dirancang agar ramah untuk pemula, hanya butuh klik & jalan!

---

## ⚙️ Fitur

- Instalasi otomatis Docker + Docker Compose
- Clone repo resmi Blockcast
- Jalankan node & init (untuk mendapatkan Hardware ID dan Challenge Key)
- Monitoring log node
- Opsi bersih-bersih (uninstall)

---

## 🚀 Cara Menggunakan

```bash
git clone https://github.com/moarunocounter/BLOCKCAST && chmod +x blockcast.sh && ./blockcast.sh
```

---

## 📋 Menu Interaktif

```text
1) Install dependencies & clone repo
2) Start Blockcast service
3) Jalankan node (copy Hardware ID & Challenge Key)
4) Cek logs node kamu
5) Stop dan Hapus semua
6) Exit
```

---

## 💡 Spesifikasi VPS yang Disarankan

| Komponen   | Rekomendasi           |
|------------|------------------------|
| **CPU**    | 2 vCPU atau lebih      |
| **RAM**    | Minimal 4 GB           |
| **Storage**| 40 GB SSD atau lebih   |
| **OS**     | Ubuntu 20.04 / 22.04 LTS |
| **Docker** | Versi terbaru + compose plugin aktif |

> ✅ Pastikan port keluar terbuka (tidak diblokir firewall outbound)

---

## 📦 Output Penting

Saat menjalankan opsi 3, node akan menampilkan:

- `Hardware ID`
- `Challenge Key`

📝 Salin dua informasi itu dan daftarkan di website resmi Blockcast (jika berlaku whitelist).

---

## 📬 Kontak & Komunitas

- Telegram: [@airdropalc](https://t.me/airdropalc)

---

## 🧹 Uninstall

Jika ingin menghapus node dan semua datanya:

- Pilih opsi **5** di menu
- Ini akan menghentikan container, hapus image, volume, dan folder repo

---

Selamat menjalankan node Blockcast 🚀
