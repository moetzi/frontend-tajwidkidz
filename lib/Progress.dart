import 'package:flutter/material.dart';

class ProgressPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Saya'),
        backgroundColor: Color(0xFF037A16),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Halaman Progress Saya',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Progres belajar Anda akan ditampilkan di sini.',
              style: TextStyle(fontSize: 16),
            ),
            // Tambahkan widget lainnya sesuai dengan kebutuhan Anda
          ],
        ),
      ),
    );
  }
}
