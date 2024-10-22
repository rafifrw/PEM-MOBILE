import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String username = ModalRoute.of(context)!.settings.arguments as String;

    // Data tambahan untuk profil
    final String name = 'Rafif Ramadhani Wibowo';
    final String phoneNumber = '0821 1013 4005';

    return Scaffold(
      appBar: AppBar(title: Text('Profile Page')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Meratakan secara vertikal
            crossAxisAlignment: CrossAxisAlignment.center, // Meratakan secara horizontal
            children: [
              CircleAvatar(
                radius: 50, // Ukuran gambar profil
                backgroundImage: AssetImage('assets/images/profile_picture.jpeg'), // Gambar profil dari folder assets
                // Jika Anda tidak memiliki gambar, Anda dapat menggunakan:
                // child: Icon(Icons.person, size: 50), // Ikon default jika gambar tidak ada
              ),
              SizedBox(height: 20), // Jarak antara gambar dan teks
              Text(
                'Username: $username',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10), // Jarak antara username dan nama
              Text(
                'Nama: $name',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10), // Jarak antara nama dan nomor telepon
              Text(
                'No Telepon: $phoneNumber',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
