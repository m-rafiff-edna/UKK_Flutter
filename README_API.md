# Konfigurasi API

## URL API Base

File `lib/services/api_service.dart` berisi konfigurasi URL API. Default:
- Android Emulator: `http://10.0.2.2:8000/api`
- iOS Simulator/Web: `http://localhost:8000/api`
- Device Fisik: `http://IP_ADDRESS:8000/api` (ganti IP_ADDRESS dengan IP komputer Anda)

## Cara Mengubah URL API

1. Buka file `lib/services/api_service.dart`
2. Ubah nilai `baseUrl` pada baris:
   ```dart
   static const String baseUrl = 'http://10.0.2.2:8000/api';
   ```

## Endpoint API yang Digunakan

1. **POST /api/login** - Login user
   - Request: `{ "email": "user@example.com", "password": "password" }`
   - Response: `{ "success": true, "data": { "user": {...}, "token": "..." } }`

2. **GET /api/ruang** - Mendapatkan daftar ruang (memerlukan token)
   - Header: `Authorization: Bearer {token}`
   - Response: `{ "success": true, "data": [...] }`

## Menjalankan Laravel API

Pastikan server Laravel berjalan:
```bash
cd UKK_Peminjaman_Ruang2
php artisan serve
```

Server akan berjalan di `http://localhost:8000`

## Testing

1. Pastikan Laravel API server berjalan
2. Pastikan URL API di Flutter sesuai dengan environment Anda
3. Jalankan aplikasi Flutter:
   ```bash
   cd ukk_flutter
   flutter run
   ```

