import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'annas2.dart';
import 'annas4.dart';
import 'package:audioplayers/audioplayers.dart';

class LearningAnnas3Widget extends StatefulWidget {
  const LearningAnnas3Widget ({super.key});

  static String routeName = 'Learningannas3';
  static String routePath = '/learningannas3';

  @override
  State<LearningAnnas3Widget > createState() => _LearningAnnas3WidgetState();
}

class _LearningAnnas3WidgetState extends State<LearningAnnas3Widget > {
  final TextEditingController _textController1 = TextEditingController();
  final FocusNode _textFieldFocusNode1 = FocusNode();

  int selectedIndex = 1;

  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _audioPlayer.onPlayerStateChanged.listen((PlayerState state) {
      setState(() {
        _isPlaying = (state == PlayerState.playing);
      });
    });
  }

  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    // Anda bisa sesuaikan navigasi bottom nav jika dipakai
  }

  void _playPauseAudio() async {
    if (_isPlaying) {
      await _audioPlayer.pause();
    } else {
      await _audioPlayer.play(AssetSource('audios/alfatihah_1.wav')); // Ganti sesuai path file Anda
    }
  }

  @override
  void dispose() {
    _textController1.dispose();
    _textFieldFocusNode1.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFFAFDCB),
        appBar: AppBar(
          backgroundColor: const Color(0xFF037A16),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded, size: 30, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text(
            'Level 5 : Belajar Membaca\nSurah dengan Tajwid',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Colors.black,
            ),
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
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),

                Text(
                  'Surah An - Nas \nAyat Ke-3',
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
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const LearningAnnas2Widget()),
                          );// Anda bisa tambahkan navigasi ke halaman sebelumnya jika ada
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.fast_forward, size: 30, color: Colors.black),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const LearningAnnas4Widget()),
                          );
                        },
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                Container(
                  width: width * 0.9,
                  height: 630,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/An-nas 3.png',
                      width: width * 0.8,
                      height: height * 0.44,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.mic_sharp, size: 30, color: Colors.black),
                      onPressed: () {
                        // Bisa tambah fungsional mic
                      },
                    ),
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
                        'Feedback AI :',
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
                            hintText: '...............',
                            filled: true,
                            fillColor: const Color(0xFFFAFDCB),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 16),
                          cursorColor: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),

        // Jika tidak ingin BottomNavigationBar, hapus kode ini:
        // bottomNavigationBar: ...
      ),
    );
  }
}
