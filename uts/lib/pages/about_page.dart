import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About Page')),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.grey[800]!, // Warna gradasi atas
              Colors.grey[500]!, // Warna gradasi bawah
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Logo dealer mobil
                Image.asset(
                  'assets/images/logo_mobil.png', // Ganti dengan path logo Anda
                  height: 100, // Tinggi logo
                  width: 100, // Lebar logo
                ),
                SizedBox(height: 20), // Jarak antara logo dan teks
                Text(
                  'Tentang 334 Garage',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 10), // Jarak antara judul dan deskripsi
                Text(
                  '334 Garage adalah dealer mobil terpercaya yang menawarkan berbagai jenis mobil baru dan bekas. '
                  'Kami berkomitmen untuk memberikan layanan terbaik kepada pelanggan dan membantu mereka '
                  'menemukan kendaraan yang sesuai dengan kebutuhan mereka.',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
