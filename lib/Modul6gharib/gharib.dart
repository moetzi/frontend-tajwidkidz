import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BacaanGharibPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bacaan Gharib', style: GoogleFonts.inter(fontWeight: FontWeight.w600)),
        backgroundColor: Color(0xFF037A16), // Hijau tua
      ),
      body: Container(
        color: Color(0xFFFAFDCB), // Background warna terang
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Apa Itu Bacaan Gharib?',
                style: GoogleFonts.inter(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(
                'Bacaan Gharib adalah bacaan dalam Al-Qur’an yang tidak lazim atau tidak berlaku pada seluruh kata atau ayat, namun hanya pada bacaan tertentu dan dalam riwayat tertentu pula.',
                style: GoogleFonts.inter(fontSize: 18)),
            SizedBox(height: 20),
            Text('Ciri-ciri Bacaan Gharib:', style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600)),
            SizedBox(height: 10),
            Text(
                '• Tidak digunakan dalam semua mushaf\n• Terjadi pada kata-kata khusus\n• Terkait langsung dengan riwayat qira’at\n• Membutuhkan ketelitian tinggi dalam pelafalan',
                style: GoogleFonts.inter(fontSize: 18)),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF037A16), // Hijau tua
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              ),
              child: Text(
                'Putar Audio Bacaan Gharib (Belum Tersedia)',
                style: GoogleFonts.inter(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
