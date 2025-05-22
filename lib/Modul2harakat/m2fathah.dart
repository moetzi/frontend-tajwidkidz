import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Modul2harakat/m2fathahtain.dart';

class LearningFathahWidget extends StatefulWidget {
  const LearningFathahWidget({super.key});

  static String routeName = 'LearningFathah';
  static String routePath = '/learningFathah';

  @override
  State<LearningFathahWidget> createState() => _LearningFathahWidgetState();
}

class _LearningFathahWidgetState extends State<LearningFathahWidget> {
  final TextEditingController _textController = TextEditingController();
  final FocusNode _textFieldFocusNode = FocusNode();

  int selectedIndex = 1; // Index for the BottomNavigationBar

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
          title: const Text('Level 2: Belajar mengenal Harakat'),
          backgroundColor: const Color(0xFF037A16),
        ),
        backgroundColor: const Color(0xFF037A16),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width * 3.9,
              height: MediaQuery.of(context).size.height * 8.44,
              decoration: const BoxDecoration(
                color: Color(0xFFFAFDCB),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(15, 35, 15, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
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
                            // TODO: Implement volume functionality
                          },
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Level 2: Belajar mengenal Harakat',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          letterSpacing: 0.0,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Pengenalan Harakat',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(60, 0, 60, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.fast_rewind,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () {
                            // TODO: Implement rewind functionality
                          },
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(
                            Icons.fast_forward,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LearningFathahtainWidget(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 352.8,
                    decoration: BoxDecoration(
                      color: Theme.of(context).secondaryHeaderColor,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/Fathah.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(60, 0, 60, 0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.mic_sharp,
                          color: Colors.black,
                          size: 30,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'Coba Ucapkan Harakat!',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 6, 20, 10),
                    child: Row(
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
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: '...............',
                              filled: true,
                              fillColor: const Color(0xFFFAFDCB),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
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
