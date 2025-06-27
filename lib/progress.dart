import 'package:flutter/material.dart';

class ProgressPageWidget extends StatelessWidget {
  const ProgressPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final String tanggal = "Minggu, 23 Maret 2025";
    final double progressPercent = 0.75; // contoh 75%
    final String judulMateri = "Belajar Huruf Hijaiyah";
    final int scoreBelajar = 85;
    final String feedbackAI = "Bagus, lanjutkan!";
    final String levelGame = "Level 3";
    final int scoreGame = 1200;
    final String rankingTerakhir = "Peringkat 5";

    return Scaffold(
      backgroundColor: const Color(0xFFFAFAD2),
      appBar: AppBar(
        title: const Text('Progress Belajarmu'),
        backgroundColor: const Color(0xFF037A16),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            children: [
              // Icon dan bintang
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.grey.shade400, size: 32),
                  const SizedBox(width: 16),
                  CircleAvatar(
                    radius: 48,
                    backgroundColor: Colors.grey.shade400,
                    child: const Text(
                      'Icon/\nGambar\nKarakter',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Icon(Icons.star, color: Colors.grey.shade400, size: 32),
                ],
              ),

              const SizedBox(height: 24),

              // Tanggal + ikon kalender
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    tanggal,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Icon(Icons.calendar_today, size: 18, color: Colors.grey.shade700),
                ],
              ),

              const SizedBox(height: 24),

              // Progress Bar
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: LinearProgressIndicator(
                  value: progressPercent,
                  minHeight: 24,
                  backgroundColor: Colors.grey.shade300,
                  color: const Color(0xFF037A16),
                ),
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '${(progressPercent * 100).toInt()}%',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xFF037A16),
                    letterSpacing: 1.2,
                  ),
                ),
              ),

              const SizedBox(height: 32),

              // Box Belajar
              _buildBox(
                icon: Icons.menu_book_outlined,
                title: 'Belajar',
                children: [
                  _buildRow(Icons.book, 'Judul Materi yang dipelajari', judulMateri),
                  _buildRow(Icons.score, 'Score yang didapat', scoreBelajar.toString()),
                  _buildRow(Icons.chat_bubble_outline, 'Feedback AI', feedbackAI),
                ],
              ),

              const SizedBox(height: 24),

              // Box Game
              _buildBox(
                icon: Icons.videogame_asset_outlined,
                title: 'Game',
                children: [
                  _buildRow(Icons.flag, 'Level game yang dilalui', levelGame),
                  _buildRow(Icons.star, 'Score (Keseluruhan)', scoreGame.toString()),
                  _buildRow(Icons.emoji_events_outlined, 'Peringkat terakhir yang didapat', rankingTerakhir),
                ],
              ),

              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBox({required IconData icon, required String title, required List<Widget> children}) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.green.shade700, size: 30),
              const SizedBox(width: 14),
              Text(title,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87)),
            ],
          ),
          const SizedBox(height: 18),
          ...children,
        ],
      ),
    );
  }

  Widget _buildRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey.shade700, size: 22),
          const SizedBox(width: 12),
          Expanded(
            flex: 3,
            child: Text(label,
                style: const TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black87)),
          ),
          Expanded(
            flex: 2,
            child: Text(value,
                textAlign: TextAlign.right,
                style: const TextStyle(fontSize: 16, color: Colors.black54)),
          ),
        ],
      ),
    );
  }
}
