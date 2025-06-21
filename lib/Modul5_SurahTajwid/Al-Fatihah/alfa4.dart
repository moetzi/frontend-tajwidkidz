import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'alfa3.dart';
import 'alfa5.dart';
import 'package:audioplayers/audioplayers.dart';

class LearningAlfatihah4Widget extends StatefulWidget {
  const LearningAlfatihah4Widget({super.key});

  static String routeName = 'LearningAlfa4';
  static String routePath = '/learningAlfa4';

  @override
  State<LearningAlfatihah4Widget> createState() => _LearningAlfatihah4WidgetState();
}

class _LearningAlfatihah4WidgetState extends State<LearningAlfatihah4Widget> {
  final TextEditingController _textController1 = TextEditingController();
  final FocusNode _textFieldFocusNode1 = FocusNode();

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

  void _playPauseAudio() async {
    if (_isPlaying) {
      await _audioPlayer.pause();
    } else {
      await _audioPlayer.play(AssetSource('audios/alfatihah_4.wav')); // Sesuaikan path audio
    }
  }

  @override
  void dispose() {
    _textController1.dispose();
    _textFieldFocusNode1.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  void _navigateTo(int page) {
    switch (page) {
      case 3:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const LearningAlfatihah3Widget()),
        );
        break;
      case 5:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const LearningAlfatihah5Widget()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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
              children: [
                const SizedBox(height: 10),

                Text(
                  'Surah Al - Fatihah\nAyat Ke-4',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 16),
                ),

                const SizedBox(height: 30),

                // Navigation buttons
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.fast_rewind, size: 30, color: Colors.black),
                        onPressed: () => _navigateTo(3),
                      ),
                      IconButton(
                        icon: const Icon(Icons.fast_forward, size: 30, color: Colors.black),
                        onPressed: () => _navigateTo(5),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Image container
                Container(
                  width: size.width * 0.94,
                  height: 650,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/Alfatihah_4.png',
                      width: size.width * 0.8,
                      height: size.height * 0.436,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                // Mic and instruction text
                Row(
                  children: [
                    const Icon(Icons.mic_sharp, size: 30, color: Colors.black),
                    const SizedBox(width: 5),
                    Text(
                      'Coba Ucapkan Huruf \nHijaiyah!',
                      style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                // Feedback AI input
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
                          autofocus: false,
                          obscureText: false,
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
    );
  }
}
