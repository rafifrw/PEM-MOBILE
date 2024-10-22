import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String username = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Halaman Home 334 Garage',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'Welcome, $username!',
                style: TextStyle(color: Colors.grey), // Mengatur warna teks menjadi putih
              ),
              SizedBox(height: 50), // Jarak antara teks dan footer
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.person, color: const Color.fromARGB(255, 45, 45, 45)), // Ikon untuk Profile
              onPressed: () {
                Navigator.pushNamed(context, '/profile', arguments: username);
              },
              tooltip: 'Profile',
            ),
            IconButton(
              icon: Icon(Icons.info, color: const Color.fromARGB(255, 45, 45, 45)), // Ikon untuk About
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              tooltip: 'About',
            ),
          ],
        ),
      ),
    );
  }
}
