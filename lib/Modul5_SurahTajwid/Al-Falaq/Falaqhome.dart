import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

// Import the required widgets for routing
import 'Falaqfull.dart'; // Import LearningAlfatihahFullWidget
import 'falaq1.dart'; // Import LearningAlfatihah1Widget

class LearningFalaqHomeWidget extends StatefulWidget {
  const LearningFalaqHomeWidget({super.key});

  static String routeName = 'LearningFalaqhome';
  static String routePath = '/learningFalaqhome';

  @override
  State<LearningFalaqHomeWidget> createState() => _LearningFalaqHomeWidgetState();
}

class _LearningFalaqHomeWidgetState extends State<LearningFalaqHomeWidget> {
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
        backgroundColor: const Color(0xFFFAFDCB),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView( // Added scrolling functionality
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 3.9,
                  height: MediaQuery.sizeOf(context).height * 8.44,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFAFDCB),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
                              child: IconButton(
                                icon: const Icon(
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
                              alignment: const AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(240, 0, 0, 0),
                                child: IconButton(
                                  icon: const FaIcon(
                                    FontAwesomeIcons.volumeHigh,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    // TODO: Add volume functionality
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Level 5 : Belajar Membaca\n Surah dengan Tajwid  ',
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
                        alignment: const AlignmentDirectional(0, -1),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const LearningAlFalaqfullWidget(),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFF2CE31),
                                    padding: const EdgeInsets.symmetric(horizontal: 16),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    textStyle: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Icon(
                                        Icons.library_books_sharp,
                                        size: 15,
                                      ),
                                      SizedBox(width: 5),
                                      Text('Surah Al - Falaq'),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(8, 20, 8, 0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const LearningAlfalaq1Widget(),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFF2CE31),
                                    padding: const EdgeInsets.symmetric(horizontal: 16),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    textStyle: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Icon(
                                        Icons.library_books_sharp,
                                        size: 15,
                                      ),
                                      SizedBox(width: 5),
                                      Text('Belajar Membaca Surah Al - Falaq'),
                                    ],
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
