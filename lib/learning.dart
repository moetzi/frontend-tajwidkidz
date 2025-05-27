import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/Modul4_MacamTajwid/view/macam_tajwid_screen.dart';
import 'modul1hijaiyah/m1alif.dart';
import 'Modul5_SurahTajwid/tampilanawal.dart';
import 'Modul2harakat/m2fathah.dart';
import 'Modul3_babibu/AIU.dart';

// Halaman Level 1
class Level1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 1'),
      ),
      body: Center(
        child: Text('Halaman Level 1: Belajar Mengenal Huruf Hijaiyah'),
      ),
    );
  }
}

// Halaman Level 2
class Level2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 2'),
      ),
      body: Center(
        child: Text('Halaman Level 2: Belajar Mengenal Harakat'),
      ),
    );
  }
}

// Halaman Level 3
class Level3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 3'),
      ),
      body: Center(
        child: Text('Halaman Level 3: Belajar Mengenal Huruf Hijaiyah (Ba Bi Bu)'),
      ),
    );
  }
}

// Halaman Level 4
class Level4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 4'),
      ),
      body: Center(
        child: Text('Halaman Level 4: Belajar Mengenal Tajwid'),
      ),
    );
  }
}

// Halaman Level 5
class Level5Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 5'),
      ),
      body: Center(
        child: Text('Halaman Level 5: Belajar Membaca Surah dengan Tajwid'),
      ),
    );
  }
}

// Halaman Utama - LearningWidget
class LearningWidget extends StatefulWidget {
  const LearningWidget({super.key});

  static String routeName = 'Learning';
  static String routePath = '/learning';

  @override
  State<LearningWidget> createState() => _LearningWidgetState();
}

class _LearningWidgetState extends State<LearningWidget> {
  int selectedIndex = 1;  // Index untuk menandakan tab yang aktif

  // Fungsi untuk menangani tab yang dipilih
  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Learning'),
          backgroundColor: Color(0xFF037A16),
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Level 1
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LearningAlifWidget()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 3.43,
                      height: MediaQuery.sizeOf(context).height * 0.35,
                      decoration: BoxDecoration(
                        color: Color(0xFFDDEB9D),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/images/level1.png',
                              width: 369.11,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 5),
                              child: Text(
                                'Level 1',
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 5),
                              child: Text(
                                'Belajar Mengenal Huruf Hijaiyah',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1, 1),
                                  child: LinearPercentIndicator(
                                    percent: 0.4,
                                    width: MediaQuery.sizeOf(context).width * 0.9,
                                    lineHeight: 20,
                                    animation: true,
                                    animateFromLastPercent: true,
                                    progressColor: Color(0xFF037A16),
                                    backgroundColor: Colors.deepOrange,
                                    center: Text(
                                      '50%',
                                      style: GoogleFonts.inter(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    padding: EdgeInsets.zero,
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

                // Level 2
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LearningFathahWidget()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 25, 10, 10),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 3.43,
                      height: MediaQuery.sizeOf(context).height * 0.35,
                      decoration: BoxDecoration(
                        color: Color(0xFFDDEB9D),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/images/Level2.png',
                              width: 369.11,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 5),
                              child: Text(
                                'Level 2',
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 5),
                              child: Text(
                                'Belajar Mengenal Harakat',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1, 1),
                                  child: LinearPercentIndicator(
                                    percent: 0.4,
                                    width: MediaQuery.sizeOf(context).width * 0.9,
                                    lineHeight: 20,
                                    animation: true,
                                    animateFromLastPercent: true,
                                    progressColor: Color(0xFF037A16),
                                    backgroundColor: Colors.deepOrange,
                                    center: Text(
                                      '50%',
                                      style: GoogleFonts.inter(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    padding: EdgeInsets.zero,
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

                // Level 3
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LearningAIUWidget()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 25, 10, 10),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 3.43,
                      height: MediaQuery.sizeOf(context).height * 0.35,
                      decoration: BoxDecoration(
                        color: Color(0xFFDDEB9D),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/images/Level3.png',
                              width: 369.11,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 5),
                              child: Text(
                                'Level 3',
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 5),
                              child: Text(
                                'Belajar Mengenal Huruf Hijaiyah (Ba Bi Bu)',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1, 1),
                                  child: LinearPercentIndicator(
                                    percent: 0.4,
                                    width: MediaQuery.sizeOf(context).width * 0.9,
                                    lineHeight: 20,
                                    animation: true,
                                    animateFromLastPercent: true,
                                    progressColor: Color(0xFF037A16),
                                    backgroundColor: Colors.deepOrange,
                                    center: Text(
                                      '50%',
                                      style: GoogleFonts.inter(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    padding: EdgeInsets.zero,
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

                // Level 4
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MacamTajwidScreen()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 3.43,
                      height: MediaQuery.sizeOf(context).height * 0.35,
                      decoration: BoxDecoration(
                        color: Color(0xFFDDEB9D),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/images/Level4.png',
                              width: 369.1,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 5),
                              child: Text(
                                'Level 4',
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 5),
                              child: Text(
                                'Belajar Mengenal Tajwid',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1, 1),
                                  child: LinearPercentIndicator(
                                    percent: 0.4,
                                    width: MediaQuery.sizeOf(context).width * 0.9,
                                    lineHeight: 20,
                                    animation: true,
                                    animateFromLastPercent: true,
                                    progressColor: Color(0xFF037A16),
                                    backgroundColor: Colors.deepOrange,
                                    center: Text(
                                      '50%',
                                      style: GoogleFonts.inter(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    padding: EdgeInsets.zero,
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
                // Level 5
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LearningtampilanSplashWidget()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 3.43,
                      height: MediaQuery.sizeOf(context).height * 0.35,
                      decoration: BoxDecoration(
                        color: Color(0xFFDDEB9D),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/images/Level5.png',
                              width: 369.1,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 5),
                              child: Text(
                                'Level 5',
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 5),
                              child: Text(
                                'Belajar Membaca Surah dengan Tajwid',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1, 1),
                                  child: LinearPercentIndicator(
                                    percent: 0.4,
                                    width: MediaQuery.sizeOf(context).width * 0.9,
                                    lineHeight: 20,
                                    animation: true,
                                    animateFromLastPercent: true,
                                    progressColor: Color(0xFF037A16),
                                    backgroundColor: Colors.deepOrange,
                                    center: Text(
                                      '50%',
                                      style: GoogleFonts.inter(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    padding: EdgeInsets.zero,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Main function untuk menjalankan aplikasi
void main() {
  runApp(
    MaterialApp(
      title: 'Learning App',
      initialRoute: '/',
      routes: {
        '/': (context) => LearningWidget(),
        '/level1': (context) => Level1Page(),
        '/level2': (context) => Level2Page(),
        '/level3': (context) => Level3Page(),
        '/level4': (context) => Level4Page(),
        '/level5': (context) => Level5Page(),
        '/m1alif': (context) => LearningAlifWidget()
      },
    ),
  );
}
