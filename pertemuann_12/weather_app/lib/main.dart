import 'package:flutter/material.dart';
import 'homescreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        primaryColor: Colors.blue, // Tambahkan warna untuk primaryColor
        hintColor: Colors.white,  // Tambahkan warna untuk hintColor
      ), // ThemeData
    ), // MaterialApp
  );
}
