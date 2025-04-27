import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Alfa6.dart';

class LearningAlfatihah7Widget extends StatefulWidget {
  const LearningAlfatihah7Widget({super.key});

  static String routeName = 'LearningAlfa7';
  static String routePath = '/learningAlfa7';

  @override
  State<LearningAlfatihah7Widget> createState() =>
      _LearningAlfatihah7WidgetState();
}

class _LearningAlfatihah7WidgetState
    extends State<LearningAlfatihah7Widget> {
  final TextEditingController _textController1 = TextEditingController();
  final TextEditingController _textController2 = TextEditingController();
  final FocusNode _textFieldFocusNode1 = FocusNode();
  final FocusNode _textFieldFocusNode2 = FocusNode();

  int selectedIndex = 1; // Index for the BottomNavigationBar

  // Function to handle bottom navigation
  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _textController1.dispose();
    _textController2.dispose();
    _textFieldFocusNode1.dispose();
    _textFieldFocusNode2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFAFDCB),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView( // Enable scrolling
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 3.99,
                  height: MediaQuery.sizeOf(context).height * 9.9,
                  decoration: BoxDecoration(
                    color: Color(0xFFFAFDCB),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 25, 15, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back_ios_rounded,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(240, 0, 0, 0),
                                child: IconButton(
                                  icon: FaIcon(
                                    FontAwesomeIcons.volumeUp,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Level 5 : Belajar Membaca\n Surah dengan Tajwid  ',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                letterSpacing: 0.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                              child: Text(
                                'Surah Al - fatihah\nAyat Ke-7',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  letterSpacing: 0.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(60, 35, 60, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.fast_rewind,
                                color: Colors.black,
                                size: 30,
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LearningAlfatihah6Widget(),
                                  ),
                                );
                              },
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(160, 0, 0, 0),
                              child: IconButton(
                                icon: Icon(
                                  Icons.fast_forward,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 20, 5, 0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.96,
                              height: 1300,
                              decoration: BoxDecoration(
                                color: Colors.black,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/images/Alfatihah_7.png',
                                  width: MediaQuery.sizeOf(context).width * 0.96,
                                  height: MediaQuery.sizeOf(context).height * 700,
                                  fit: BoxFit.cover, // Ensures the image covers the entire container
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(60, 15, 60, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.mic_sharp,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                  child: Text(
                                    'Coba Ucapkan Huruf \n Hijaiyah!',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      letterSpacing: 0.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(50, 15, 50, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Feedback AI :',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    letterSpacing: 0.0,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 200,
                                    child: TextFormField(
                                      controller: _textController1,
                                      focusNode: _textFieldFocusNode1,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: GoogleFonts.inter(
                                          fontWeight: FontWeight.w500,
                                        ),
                                        hintText: '...............',
                                        filled: true,
                                        fillColor: Color(0xFFFAFDCB),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                      ),
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
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
              icon: FaIcon(FontAwesomeIcons.home, size: 30),
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
