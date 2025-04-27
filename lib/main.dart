import 'package:flutter/material.dart';
import 'package:untitled/Modul2harakat/m2dhammah.dart';
import 'package:untitled/Modul5_SurahTajwid/Al-Falaq/Falaqfull.dart';
import 'package:untitled/Modul5_SurahTajwid/Al-Falaq/Falaqhome.dart';
import 'package:untitled/Modul5_SurahTajwid/Al-Ihlas/Al-Ikhlas2.dart';
import 'package:untitled/Modul5_SurahTajwid/tampilanawal.dart';
import 'package:untitled/Modul5_SurahTajwid/Al-Fatihah/Alfatihahome.dart';
import 'splashscreen.dart'; // Pastikan file ini sesuai path kamu
import 'homepage.dart'; // Ga dipakai langsung di sini, cukup dipanggil dari splashscreen
import 'login.dart';
import 'signup.dart';
import 'learning.dart';
import 'modul1hijaiyah/m1alif.dart';
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
import 'Modul5_SurahTajwid/tampilanawal.dart';
import 'Modul5_SurahTajwid/Al-Fatihah/Alfatihahome.dart';
import 'Modul5_SurahTajwid/AlfatihahFull.dart';
import 'Modul5_SurahTajwid/Al-Fatihah/Alfa.dart';
import 'Modul5_SurahTajwid/Al-Fatihah/Alfa1.dart';
import 'Modul5_SurahTajwid/Al-Fatihah/Alfa2.dart';
import 'Modul5_SurahTajwid/Al-Fatihah/Alfa3.dart';
import 'Modul5_SurahTajwid/Al-Fatihah/Alfa4.dart';
import 'Modul5_SurahTajwid/Al-Fatihah/Alfa5.dart';
import 'Modul5_SurahTajwid/Al-Fatihah/Alfa6.dart';
import 'Modul5_SurahTajwid/Al-Fatihah/Alfa7.dart';
import 'Modul5_SurahTajwid/An-Nas/Annashome.dart';
import 'Modul5_SurahTajwid/An-Nas/Annas.dart';
import 'Modul5_SurahTajwid/An-Nas/Annas1.dart';
import 'Modul5_SurahTajwid/An-Nas/Annas2.dart';
import 'Modul5_SurahTajwid/An-Nas/Annas3.dart';
import 'Modul5_SurahTajwid/An-Nas/Annas4.dart';
import 'Modul5_SurahTajwid/An-Nas/Annas5.dart';
import 'Modul5_SurahTajwid/An-Nas/Annas6.dart';
import 'Modul5_SurahTajwid/Al-Falaq/Falaqhome.dart';
import 'Modul5_SurahTajwid/Al-Falaq/Falaqfull.dart';
import 'Modul5_SurahTajwid/Al-Falaq/Falaq1.dart';
import 'Modul5_SurahTajwid/Al-Falaq/Falaq2.dart';
import 'Modul5_SurahTajwid/Al-Falaq/Falaq3.dart';
import 'Modul5_SurahTajwid/Al-Falaq/Falaq4.dart';
import 'Modul5_SurahTajwid/Al-Falaq/Falaq5.dart';
import 'Modul5_SurahTajwid/Al-Ihlas/Al-Ikhlas.dart';
import 'Modul5_SurahTajwid/Al-Ihlas/Al-Ikhlas1.dart';
import 'Modul5_SurahTajwid/Al-Ihlas/Al-Ikhlas2.dart';
import 'Modul5_SurahTajwid/Al-Ihlas/Al-Ikhlas3.dart';
import 'Modul5_SurahTajwid/Al-Ihlas/Al-Ikhlas4.dart';
import 'Modul5_SurahTajwid/Al-Kafirun/Al-Kafirunhome.dart';
import 'Modul5_SurahTajwid/Al-Kafirun/Al-Kafirun.dart';
import 'Modul5_SurahTajwid/Al-Kafirun/Al-Kafirun1.dart';
import 'Modul5_SurahTajwid/Al-Kafirun/Al-Kafirun2.dart';
import 'Modul5_SurahTajwid/Al-Kafirun/Al-Kafirun3.dart';
import 'Modul5_SurahTajwid/Al-Kafirun/Al-Kafirun4.dart';
import 'Modul5_SurahTajwid/Al-Kafirun/Al-Kafirun5.dart';
import 'Modul5_SurahTajwid/Al-Kafirun/Al-Kafirun6.dart';
import 'Modul5_SurahTajwid/Al-Kausar/Al-Kausarhome.dart';
import 'Modul5_SurahTajwid/Al-Kausar/Al-Kausar.dart';
import 'Modul5_SurahTajwid/Al-Kausar/Al-Kausar1.dart';
import 'Modul5_SurahTajwid/Al-Kausar/Al-Kausar2.dart';
import 'Modul5_SurahTajwid/Al-Kausar/Al-Kausar3.dart';
import 'minigame.dart';
import 'Progress.dart';















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
