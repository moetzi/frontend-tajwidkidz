import 'package:flutter/material.dart';
import 'package:untitled/Modul2harakat/m2dhammah.dart';
import 'splashscreen.dart'; // Pastikan file ini sesuai path kamu
import 'homepage.dart'; // Ga dipakai langsung di sini, cukup dipanggil dari splashscreen
import 'login.dart';
import 'signup.dart';
import 'learning.dart';
import 'modul1hijaiyah/m1alif..dart';
import 'modul1hijaiyah/m1ba.dart';
import 'modul1hijaiyah/m1ta.dart';
import 'modul1hijaiyah/m1tsa.dart';
import 'modul1hijaiyah/m1jim.dart';
import 'modul1hijaiyah/m1ha.dart';
import 'modul1hijaiyah/m1kho.dart';
import 'modul1hijaiyah/m1dal.dart';
import 'modul1hijaiyah/m1dzal.dart';
import 'modul1hijaiyah/m1ra.dart';
import 'modul1hijaiyah/m1za.dart';
import 'modul1hijaiyah/m1sin.dart';
import 'modul1hijaiyah/m1syin.dart';
import 'modul1hijaiyah/m1shod.dart';
import 'modul1hijaiyah/m1dho.dart';
import 'modul1hijaiyah/m1tho.dart';
import 'modul1hijaiyah/m1dzo.dart';
import 'modul1hijaiyah/m1ain.dart';
import 'modul1hijaiyah/m1gho.dart';
import 'modul1hijaiyah/m1dal.dart';
import 'modul1hijaiyah/m1fa.dart';
import 'modul1hijaiyah/m1qof.dart';
import 'modul1hijaiyah/m1kaf.dart';
import 'modul1hijaiyah/m1lam.dart';
import 'modul1hijaiyah/m1mim.dart';
import 'modul1hijaiyah/m1nun.dart';
import 'modul1hijaiyah/m1wau.dart';
import 'modul1hijaiyah/m1haa.dart';
import 'modul1hijaiyah/m1ya.dart';
import 'Modul2harakat/m2fathah.dart';
import 'Modul2harakat/m2kasrah.dart';
import 'Modul2harakat/m2dhammah.dart';
import 'Modul2harakat/m2fathahtain.dart';
import 'Modul2harakat/m2kasrahtain.dart';
import 'Modul2harakat/m2dhammahtain.dart';
import 'Modul2harakat/m2sukun.dart';
import 'Modul2harakat/m2tasydid.dart';






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
      home: const LearningDzalWidget(

      ), // TAMPILKAN SPLASH SCREEN DULU
    );
  }
}
