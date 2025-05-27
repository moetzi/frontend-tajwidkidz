import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

// Add imports for the new screens
import 'Al-Fatihah/alfatihahome.dart';  // Import Al-Fatihah home widget
import 'An-Nas/annashome.dart';  // Import An-Nas home widget
import 'Al-Ihlas/al_ikhlashome.dart';  // Import Al-Ikhlas home widget
import 'Al-Falaq/falaqhome.dart';  // Import Al-Falaq home widget
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

  // Function to handle bottom navigation (still here if needed for future)
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
        backgroundColor: const Color(0xFFFAFDCB),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView( // Added SingleChildScrollView to make the content scrollable
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 3.9,
                  height: MediaQuery.of(context).size.height * 8.44,
                  decoration: const BoxDecoration(color: Color(0xFFFAFDCB)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.arrow_back_ios_rounded,
                                color: Colors.black,
                                size: 30,
                              ),
                              onPressed: () {
                                Navigator.pop(context); // Go back on press
                              },
                            ),
                            const Spacer(),
                            IconButton(
                              icon: const FaIcon(
                                FontAwesomeIcons.volumeHigh,
                                color: Colors.black,
                                size: 30,
                              ),
                              onPressed: () {
                                // TODO: Volume button action
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
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
                              padding: const EdgeInsets.all(10),
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
                        padding: const EdgeInsets.only(top: 50),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Navigate to the LearningHomeAlfatihahWidget
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LearningAlfatihahHomeWidget()
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFF2CE31),
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
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
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                // Navigate to the LearningAnNasHomeWidget
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LearningAnnasHomeWidget()
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFF2CE31),
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
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
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                // Navigate to the LearningIkhlasHomeWidget
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LearningAlikhlasHomeWidget()
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFF2CE31),
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
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
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                // Navigate to the LearningFalaqHomeWidget
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LearningFalaqHomeWidget()
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFF2CE31),
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
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
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                // Navigate to the LearningKausarHomeWidget
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LearningAlkausarHomeWidget()
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFF2CE31),
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
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
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                // Navigate to the LearningKafirunHomeWidget
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LearningAlkafirunHomeWidget()
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFF2CE31),
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
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
        // BottomNavigationBar has been removed here as requested
      ),
    );
  }
}
