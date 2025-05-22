import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'jajiju.dart';
import 'khokhikhu.dart';

class LearningHaHiHuWidget extends StatefulWidget {
  const LearningHaHiHuWidget({super.key});

  static String routeName = 'Learningaiu';
  static String routePath = '/learningaiu';

  @override
  State<LearningHaHiHuWidget> createState() => _LearningHaHiHuWidgetState();
}

class _LearningHaHiHuWidgetState extends State<LearningHaHiHuWidget> {
  final TextEditingController _textController = TextEditingController();
  final FocusNode _textFieldFocusNode = FocusNode();

  int selectedIndex = 1;

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
        appBar: AppBar(
          title: const Text('Level 3: Belajar mengenal \n Huruf Hijaiyah (Ba Bi Bu)'),
          backgroundColor: const Color(0xFF037A16),
        ),
        backgroundColor: const Color(0xFF037A16),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFFAFDCB),
              ),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
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
                        icon: const FaIcon(FontAwesomeIcons.volumeHigh, color: Colors.black, size: 30),
                        onPressed: () {
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  // Centered Title Text
                  Center(
                    child: Text(
                      'Level 3: Belajar mengenal Huruf Hijaiyah dengan Metode Fonetik',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Ha',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Navigation Buttons (Rewind & Forward)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.fast_rewind, color: Colors.black, size: 30),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LearningJaJiJuWidget(),
                            ),
                          );
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.fast_forward, color: Colors.black, size: 30),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => LearningKhoKhiKhuWidget()),
                          );
                        },
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  // Image
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Theme.of(context).secondaryHeaderColor,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/Hahihu.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Mic and Feedback Input
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

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Feedback AI:',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
                          controller: _textController,
                          focusNode: _textFieldFocusNode,
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: '...............',
                            filled: true,
                            fillColor: const Color(0xFFFAFDCB),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFFFAFDCB),
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: onTabTapped,
          selectedItemColor: const Color(0xFF037A16),
          unselectedItemColor: Colors.black,
          selectedLabelStyle: const TextStyle(
            fontFamily: 'Inter',
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelStyle: const TextStyle(
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
