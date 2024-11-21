import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF003466),
      body: Column(
        children: [
          // Header
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo_polinema.png',
                  width: 50,
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'POLINEMA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Manage Pelatihan & Sertifikasi',
                      style: TextStyle(
                        color: Color(0xFFF4D35E),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 32),
                  _buildLoginForm(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context) {
    return Container(
      width: double.infinity, // Full width
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context)
            .size
            .height, // Full height menggunakan context
      ),
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Text(
              'Welcome Back!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              hintText: 'Username',
              prefixIcon: Icon(Icons.person),
            ),
          ),
          SizedBox(height: 16),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility_off),
            ),
          ),
          SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              // Add login logic here
            },
            child: Text('Log In'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF003466),
              foregroundColor: Colors.white,
              minimumSize: Size.fromHeight(48),
            ),
          ),
          SizedBox(height: 8),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              style: TextButton.styleFrom(
                foregroundColor:
                    Colors.black, // Mengatur warna teks menjadi putih
              ),
              child: Text('Forgot Password?'),
            ),
          ),
        ],
      ),
    );
  }
}
