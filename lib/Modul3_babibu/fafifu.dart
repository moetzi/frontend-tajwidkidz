import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audioplayers.dart'; // Pastikan sudah di pubspec.yaml
import 'ghoghighu.dart';
import 'qoqiqu.dart';

class LearningFaFiFuWidget extends StatefulWidget {
  const LearningFaFiFuWidget({super.key});

  static String routeName = 'Learningfafifu';
  static String routePath = '/learningfafifu';

  @override
  State<LearningFaFiFuWidget> createState() => _LearningFaFiFuWidgetState();
}

class _LearningFaFiFuWidgetState extends State<LearningFaFiFuWidget> {
  final TextEditingController _textController = TextEditingController();
  final FocusNode _textFieldFocusNode = FocusNode();

  int selectedIndex = 1;

  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;

  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
      // current screen
        break;
      case 2:
        Navigator.pushNamed(context, '/progress');
        break;
      case 3:
        Navigator.pushNamed(context, '/account');
        break;
    }
  }

  Future<void> _playPauseAudio() async {
    if (_isPlaying) {
      await _audioPlayer.pause();
    } else {
      // Ganti path audio sesuai file Anda
      await _audioPlayer.play(AssetSource('audios/fafifu_audio.mp3'));
    }
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    _textFieldFocusNode.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFFAFDCB),
        appBar: AppBar(
          title: const Text('Level 3: Belajar mengenal \n Huruf Hijaiyah (Ba Bi Bu)'),
          backgroundColor: const Color(0xFF037A16),
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              decoration: const BoxDecoration(color: Color(0xFFFAFDCB)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Back & Volume Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.black, size: 30),
                        onPressed: () => Navigator.pop(context),
                      ),
                      IconButton(
                        icon: FaIcon(
                          _isPlaying ? FontAwesomeIcons.volumeHigh : FontAwesomeIcons.volumeOff,
                          color: Colors.black,
                          size: 30,
                        ),
                        onPressed: _playPauseAudio,
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  // Title & Subtitle
                  Column(
                    children: [
                      Text(
                        'Level 3: Belajar mengenal Huruf \n Hijaiyah dengan Metode Fonetik',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Fa',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Navigation buttons rewind & forward
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.fast_rewind, color: Colors.black, size: 30),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => const LearningGhoGhiGhuWidget()),
                            );
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.fast_forward, color: Colors.black, size: 30),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => const LearningQoQiQuWidget()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Main image
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 320,
                    decoration: BoxDecoration(
                      color: Theme.of(context).secondaryHeaderColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/Fafifu.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Mic and instruction
                  Row(
                    children: [
                      const Icon(Icons.mic_sharp, color: Colors.black, size: 30),
                      const SizedBox(width: 10),
                      Text(
                        'Coba Ucapkan Harakat!',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  // Feedback AI input
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
                    child: Row(
                      children: [
                        Text(
                          'Feedback AI: ',
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextFormField(
                            controller: _textController,
                            focusNode: _textFieldFocusNode,
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: '...............',
                              hintStyle: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                              ),
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
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                            ),
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
