import 'package:flutter/material.dart';
import 'package:pbl/pages/notif_page.dart';
import 'pages/landing_page.dart';
import 'pages/login_page.dart';
import 'pages/dosen_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // '/': (context) => DosenHome(),
        '/': (context) => LandingPage(),
        '/login': (context) => LoginPage(),
        '/dosen_home': (context) => DosenHome(),
        '/notif': (context) => NotifikasiPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
