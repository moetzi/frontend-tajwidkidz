import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

// Pastikan import widget tujuan sudah benar dan file tersedia
import 'allahab.dart'; // Contoh file tempat LearningAllahabfullWidget berada
import 'allahab1.dart';    // Contoh file tempat LearningAllahab1Widget berada

class LearningAllahabHomeWidget extends StatefulWidget {
  const LearningAllahabHomeWidget({super.key});

  static String routeName = 'Learningallahabhome';
  static String routePath = '/learningallahabhome';

  @override
  State<LearningAllahabHomeWidget> createState() =>
      _LearningAllahabHomeWidgetState();
}

class _LearningAllahabHomeWidgetState extends State<LearningAllahabHomeWidget> {
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
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFFFAFDCB),
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
                          onPressed: () => Navigator.pop(context),
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const FaIcon(
                            FontAwesomeIcons.volumeHigh,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () {
                            // TODO: volume button action
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Level 5 : Belajar Membaca\nSurah dengan Tajwid',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 80),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                const LearningAllahabfullWidget(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFF2CE31),
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            textStyle: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(Icons.library_books_sharp, size: 15),
                              SizedBox(width: 5),
                              Text('Surah Al - Lahab'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                const LearningAllahab1Widget(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFF2CE31),
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            textStyle: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(Icons.library_books_sharp, size: 15),
                              SizedBox(width: 5),
                              Text('Belajar Membaca Surah Al - Lahab'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
