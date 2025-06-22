import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'splashscreen.dart';// Pastikan untuk mengimpor SharedPreferences

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  @override
  void initState() {
    super.initState();
    _loadTheme(); // Memuat preferensi tema saat aplikasi dimulai
  }

  // Memuat tema yang sudah disimpan di SharedPreferences
  void _loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isDarkMode = prefs.getBool('isDarkMode') ?? false; // Default ke false (terang)
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TajwidKidz',
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData.light().copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreenWidget(),
    );
  }
}
