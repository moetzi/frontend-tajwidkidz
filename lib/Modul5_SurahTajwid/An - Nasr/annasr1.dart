import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audioplayers.dart'; // Tambah audioplayers
import 'annasr2.dart';

class LearningAnnasr1Widget extends StatefulWidget {
  const LearningAnnasr1Widget({super.key});

  static String routeName = 'Learningannasr1';
  static String routePath = '/learningannasr1';

  @override
  State<LearningAnnasr1Widget> createState() => _LearningAnnasr1WidgetState();
}

class _LearningAnnasr1WidgetState extends State<LearningAnnasr1Widget> {
  final TextEditingController _textController1 = TextEditingController();
  final FocusNode _textFieldFocusNode1 = FocusNode();

  int selectedIndex = 1;

  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;

  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });

    // Contoh routing bottom nav, sesuaikan dengan route app kamu
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
      // Current page, jadi tidak perlu apa-apa
        break;
      case 2:
        Navigator.pushNamed(context, '/progress');
        break;
      case 3:
        Navigator.pushNamed(context, '/account');
        break;
    }
  }

  @override
  void dispose() {
    _textController1.dispose();
    _textFieldFocusNode1.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  // Fungsi play/pause audio
  void _playPauseAudio() async {
    if (_isPlaying) {
      await _audioPlayer.pause();
    } else {
      // Ganti dengan path file audio kamu yang sesuai di assets
      await _audioPlayer.play(AssetSource('audios/alif_1.wav'));
    }
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFFAFDCB),
        appBar: AppBar(
          backgroundColor: const Color(0xFF037A16),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.black, size: 30),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text(
            'Level 5 : Belajar Membaca\nSurah dengan Tajwid',
            style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: FaIcon(
                _isPlaying ? FontAwesomeIcons.volumeHigh : FontAwesomeIcons.volumeOff,
                size: 30,
                color: Colors.black,
              ),
              onPressed: _playPauseAudio,
            ),
            const SizedBox(width: 8),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),

                  Text(
                    'Surah Al - Nasr \nAyat Ke-1',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 16),
                  ),

                  const SizedBox(height: 30),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.fast_rewind, size: 30, color: Colors.black),
                          onPressed: () {
                            // Tambahkan navigasi ke halaman sebelumnya jika ada
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.fast_forward, size: 30, color: Colors.black),
                          onPressed: () {
                            Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const LearningAnnasr2Widget()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  Container(
                    width: width * 0.9,
                    height: 600,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/Annasr1.png',
                        width: width * 0.9,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Row(
                    children: [
                      const Icon(Icons.mic_sharp, size: 30, color: Colors.black),
                      const SizedBox(width: 10),
                      Text(
                        'Coba Ucapkan Huruf \nHijaiyah!',
                        style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      children: [
                        Text(
                          'Feedback AI: ',
                          style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextFormField(
                            controller: _textController1,
                            focusNode: _textFieldFocusNode1,
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: '...............',
                              hintStyle: GoogleFonts.inter(fontWeight: FontWeight.w600),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.transparent, width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.transparent, width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              fillColor: const Color(0xFFFAFDCB),
                            ),
                            style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 16),
                            cursorColor: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
