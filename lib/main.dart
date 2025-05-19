import 'package:flutter/material.dart';
import 'splashscreen.dart'; // Pastikan file ini sesuai path kamu
// Ga dipakai langsung di sini, cukup dipanggil dari splashscreen















void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TajwidKidz',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreenWidget(

      ), // TAMPILKAN SPLASH SCREEN DULU
    );
  }
}
