import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF051C3D), // Dark blue background
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with logo and text
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
            color: Color(0xFF051C3D),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/logo_polinema.png', // Path to logo
                  height: 60,
                ),
                SizedBox(width: 16),
                Text(
                  'POLITEKNIK NEGERI MALANG',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'POLINEMA',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.2,
                    ),
                  ),
                  Text(
                    'Manage',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF4D35E),
                      height: 1.2,
                    ),
                  ),
                  Text(
                    'Pelatihan &',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF4D35E),
                      height: 1.2,
                    ),
                  ),
                  Text(
                    'Sertifikasi',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF4D35E),
                      height: 1.2,
                    ),
                  ),
                  SizedBox(height: 40),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login'); // Navigasi ke halaman login
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF4D35E), // Yellow button
                        padding: EdgeInsets.symmetric(
                            horizontal: 180, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        "Let's Start",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF0D1B2A), // Dark blue text
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
