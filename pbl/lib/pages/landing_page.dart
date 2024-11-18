import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D1B2A), // Dark blue background
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with logo and text
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
            color: Color(0xFF0D1B2A), // Dark blue header
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start, // Align to the left
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
                crossAxisAlignment: CrossAxisAlignment.start, // Align left
                children: [
                  Text(
                    'POLINEMA',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.2, // Mengurangi jarak antar baris
                    ),
                  ),
                  Text(
                    'Manage',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF4D35E), // Warna kuning
                      height: 1.2, // Mengurangi jarak antar baris
                    ),
                  ),
                  Text(
                    'Pelatihan &',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF4D35E), // Warna kuning
                      height: 1.2, // Mengurangi jarak antar baris
                    ),
                  ),
                  Text(
                    'Sertifikasi',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF4D35E), // Warna kuning
                      height: 1.2, // Mengurangi jarak antar baris
                    ),
                  ),

                  SizedBox(height: 40),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Action for the button
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF4D35E), // Yellow button
                        padding:
                            EdgeInsets.symmetric(horizontal: 180, vertical: 15),
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
