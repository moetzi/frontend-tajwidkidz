import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

// Add imports for the new screens
import 'Al-Fatihah/Alfatihahome.dart';  // Import Al-Fatihah home widget
import 'An-Nas/AnnasHome.dart';  // Import An-Nas home widget
import 'Al-Ihlas/al_ikhlashome.dart';  // Import Al-Ikhlas home widget
import 'Al-Falaq/Falaqhome.dart';  // Import Al-Falaq home widget
import 'Al-Kausar/al_kausarhome.dart';  // Import Al-Kausar home widget
import 'Al-Kafirun/al_kafirunhome.dart';  // Import Al-Kafirun home widget

class LearningtampilanSplashWidget extends StatefulWidget {
  const LearningtampilanSplashWidget({super.key});

  static String routeName = 'Learningtampilanawal';
  static String routePath = '/learningtampilanawal';

  @override
  State<LearningtampilanSplashWidget> createState() => _LearningtampilanSplashWidgetState();
}

class _LearningtampilanSplashWidgetState
    extends State<LearningtampilanSplashWidget> {
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
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFAFDCB),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView( // Added SingleChildScrollView to make the content scrollable
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 3.9,
                  height: MediaQuery.of(context).size.height * 8.44,
                  decoration: BoxDecoration(color: Color(0xFFFAFDCB)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios_rounded,
                                color: Colors.black,
                                size: 30,
                              ),
                              onPressed: () {
                                Navigator.pop(context); // Go back on press
                              },
                            ),
                            Spacer(),
                            IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.volumeHigh,
                                color: Colors.black,
                                size: 30,
                              ),
                              onPressed: () {
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            Text(
                              'Level 5 : Belajar Membaca\nSurah dengan Tajwid',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                '"Di level ini, kamu akan belajar membaca surat-surat pendek dalam Al-Qur’an dengan benar sesuai dengan hukum tajwid yang telah kamu pelajari sebelumnya."',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Navigate to the LearningHomeAlfatihahWidget
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LearningAlfatihahHomeWidget()
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFF2CE31),
                                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                '1. Surah Al - Fatihah',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                // Navigate to the LearningAnNasHomeWidget
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LearningAnnasHomeWidget()
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFF2CE31),
                                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                '2. Surah An - Nas',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                // Navigate to the LearningIkhlasHomeWidget
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LearningAlikhlasHomeWidget()
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFF2CE31),
                                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                '3. Surah Al - Ikhlas',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                // Navigate to the LearningFalaqHomeWidget
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LearningFalaqHomeWidget()
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFF2CE31),
                                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                '4. Surah Al - Falaq',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                // Navigate to the LearningKausarHomeWidget
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LearningAlkausarHomeWidget()
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFF2CE31),
                                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                '5. Surah Al - Kausar',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                // Navigate to the LearningKafirunHomeWidget
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LearningAlkafirunHomeWidget()
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFF2CE31),
                                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                '6. Surah Al - Kafirun',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
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
          currentIndex: selectedIndex,
          onTap: onTabTapped,
          selectedItemColor: Color(0xFF037A16),
          unselectedItemColor: Colors.black,
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
