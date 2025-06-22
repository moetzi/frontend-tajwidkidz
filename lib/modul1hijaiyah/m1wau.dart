import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audioplayers.dart';
import 'm1nun.dart';
import 'm1haa.dart';

class LearningWauWidget extends StatefulWidget {
  const LearningWauWidget({super.key});

  static String routeName = 'LearningWau';
  static String routePath = '/learningWau';

  @override
  State<LearningWauWidget> createState() => _LearningWauWidgetState();
}

class _LearningWauWidgetState extends State<LearningWauWidget> {
  final TextEditingController _textController = TextEditingController();
  final FocusNode _textFieldFocusNode = FocusNode();

  int selectedIndex = 1; // Index for the BottomNavigationBar
  final AudioPlayer _audioPlayer = AudioPlayer(); // Buat final karena tidak diubah
  bool _isPlaying = false; // Track audio playing state

  // Function to handle bottom navigation
  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _textController.dispose();
    _textFieldFocusNode.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  // Function to play/pause audio
  void _playPauseAudio() async {
    if (_isPlaying) {
      await _audioPlayer.pause();
    } else {
      await _audioPlayer.play(AssetSource('audios/modul1/waw_24.wav'));
    }
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFAFDCB),
        appBar: AppBar(
          title: Text('Level 1 Belajar Huruf Hijaiyah'),
          backgroundColor: Color(0xFF037A16),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 47, 15, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.black,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.pop(context); // Go back to the previous screen
                        },
                      ),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.volumeHigh,
                          color: Colors.black,
                          size: 30,
                        ),
                        onPressed: _playPauseAudio,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Column(
                    children: [
                      Text(
                        'Level 1: Belajar Huruf Hijaiyah',
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                        child: Text(
                          'Pengenalan Huruf Hijaiyah',
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(60, 35, 60, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.fast_rewind,
                          color: Colors.black,
                          size: 25,
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LearningNunWidget(),
                            ),
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.fast_forward,
                          color: Colors.black,
                          size: 25,
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LearningHaaWidget()
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    height: 183.67,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/Card Wau.png',
                        width: 333.9,
                        height: 207.2,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(60, 15, 60, 0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.mic_sharp,
                          color: Colors.black,
                          size: 30,
                        ),
                        onPressed: () {
                        },
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          'Coba Ucapkan Huruf \n Hijaiyah!',
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 15, 50, 0),
                  child: Row(
                    children: [
                      Text(
                        'Feedback AI:',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: 200,
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
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              fillColor: Color(0xFFFAFDCB),
                            ),
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                            ),
                            cursorColor: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFFFAFDCB),
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: onTabTapped,
          selectedItemColor: Color(0xFF037A16),
          unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(
            fontFamily: 'Inter',
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelStyle: TextStyle(
            fontFamily: 'Inter',
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          items: const [
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house, size: 30),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book, size: 30),
              label: 'Learning',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.chartBar, size: 30),
              label: 'Progress',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined, size: 30),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
