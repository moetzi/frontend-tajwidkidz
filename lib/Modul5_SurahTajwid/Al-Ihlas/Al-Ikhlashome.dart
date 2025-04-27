import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

// Import the required widgets for routing
import 'Al-Ikhlas.dart'; // Import LearningAlfatihahFullWidget
import 'Al-Ikhlas1.dart'; // Import LearningAlfatihah1Widget

class LearningAlikhlasHomeWidget extends StatefulWidget {
  const LearningAlikhlasHomeWidget ({super.key});

  static String routeName = 'LearningAlikhlashome';
  static String routePath = '/learningAlikhlashome';

  @override
  State<LearningAlikhlasHomeWidget> createState() =>
      _LearningAlikhlasHomeWidgetState();
}

class _LearningAlikhlasHomeWidgetState
    extends State<LearningAlikhlasHomeWidget> {
  int selectedIndex = 1;

  // Function to handle bottom navigation
  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 3.9,
                  height: MediaQuery.sizeOf(context).height * 8.44,
                  decoration: BoxDecoration(
                    color: Color(0xFFFAFDCB),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
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
                                  // Use Navigator.pop() to go back
                                  Navigator.pop(context); // This goes back to the previous screen
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
                                    print('IconButton pressed ...');
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
                              'Level 5 : Belajar Membaca\nSurah dengan Tajwid  ',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 20,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, -1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                child: ElevatedButton(
                                  onPressed: () {
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                  builder: (context) => LearningAlikhlasfullWidget()
                                  ),
                                  );
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.library_books_sharp,
                                        size: 15,
                                      ),
                                      Text('Surah Al - Ikhlas'),
                                    ],
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFF2CE31),
                                    padding: EdgeInsets.symmetric(horizontal: 16),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    textStyle: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(8, 20, 8, 0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LearningAlikhlas1Widget()
                                      ),
                                    );
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.library_books_sharp,
                                        size: 15,
                                      ),
                                      Text('Belajar Membaca Surah Al - Ikhlas'),
                                    ],
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFF2CE31),
                                    padding: EdgeInsets.symmetric(horizontal: 16),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    textStyle: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
      ),
    );
  }
}
