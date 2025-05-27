import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LearningAlfatihahfullWidget extends StatefulWidget {
  const LearningAlfatihahfullWidget({super.key});

  static String routeName = 'LearningAlfa';
  static String routePath = '/learningAlfa';

  @override
  State<LearningAlfatihahfullWidget> createState() =>
      _LearningAlfatihahfullWidgetState();
}

class _LearningAlfatihahfullWidgetState
    extends State<LearningAlfatihahfullWidget> {
  final TextEditingController _textController = TextEditingController();
  final FocusNode _textFieldFocusNode = FocusNode();

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
    _textController.dispose();
    _textFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

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
          child: Container(
            width: width * 3.9,
            height: height * 8.44,
            decoration: BoxDecoration(
              color: Color(0xFFFAFDCB),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: width,
                  height: height * 0.18, // Adjusted to use percentage
                  decoration: BoxDecoration(
                    color: Color(0xFF037A16),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 40, 15, 40),
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
                              Navigator.pop(context); // Go back on press
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(40, 0, 43, 0),
                          child: Text(
                            'Surah Al- Fatihah',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              letterSpacing: 0.0,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.volumeHigh,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Wrap ListView with Expanded to ensure it scrolls
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [
                      Column(
                        children: [
                          // Surah 1
                          _buildSurahContainer(
                            width,
                            height,
                            1, // Surah 1 (odd)
                            'Bismillahir-rahmanir-rahim',
                            'Dengan nama Allah Yang Maha \n Pengasih lagi Maha Penyayang.',
                            'Idgham Syamsiyah, Ghunah Musya- \n ddadah,  Alif Lam Qomariyah',
                            'assets/images/Alfa1.png',
                            0.3, // Default height factor
                            0.78, // 60% width for Surah 1 image
                            0.04, // 4% height for Surah 1 image
                            30, // Padding for Surah 1
                          ),
                          // Surah 2
                          _buildSurahContainer(
                            width,
                            height,
                            2, // Surah 2 (even)
                            'Al-hamdu lillahi rabbil-‘alamin',
                            'Segala puji bagi Allah, Tuhan semesta \nalam',
                            'Alif Lam Qomariyah, Idgham Mimi \n (Mithlain)',
                            'assets/images/Alfa2.png',
                            0.250, // Default height factor
                            0.80, // Default width and height for Surah 2
                            0.04,
                            0, // No extra padding for Surah 2
                          ),
                          // Surah 3
                          _buildSurahContainer(
                            width,
                            height,
                            3, // Surah 3 (odd)
                            'Ar-rahmanir-rahim',
                            'Yang Maha Pengasih lagi \nMaha Penyayang',
                            'Alif Lam Syamsiyah, Mad Arid Lisukun',
                            'assets/images/Alfa3.png',
                            0.280, // Default height factor
                            0.48, // Default width for Surah 3
                            0.04,
                            0, // No extra padding for Surah 3
                          ),
                          // Surah 4
                          _buildSurahContainer(
                            width,
                            height,
                            4, // Surah 4 (even)
                            'Maliki yaumid-din',
                            'Pemilik hari Pembalasan',
                            'Mad Layin, Alif Lam Qomariyah, Mad \n Arid Lisukun',
                            'assets/images/Alfa4.png',
                            0.255, // Default height factor
                            0.48, // Default width and height for Surah 4
                            0.07,
                            0, // No extra padding for Surah 4
                          ),
                          // Surah 5
                          _buildSurahContainer(
                            width,
                            height,
                            5, // Surah 5 (odd)
                            'Iyyaka na‘budu wa iyyaka nasta‘in',
                            'Hanya kepada Engkaulah kami meny-\nembah dan hanya kepada Engkaulah kami \n memohon pertolongan.',
                            'Mad Arid Lisukun',
                            'assets/images/Alfa5.png',
                            0.3, // Increase height for Surah 5
                            0.78, // Default width and height for Surah 5
                            0.05,
                            0, // No extra padding for Surah 5
                          ),
                          // Surah 6
                          _buildSurahContainer(
                            width,
                            height,
                            6, // Surah 6 (even)
                            'Ihdinas-sirathal-mustaqim',
                            'Bimbinglah kami ke jalan yang lurus',
                            'Alif Lam Syamsiyah, Alif Lam Qamariyah,\n Mad Arid Lisukun',
                            'assets/images/Alfa6.png',
                            0.245, // Default height factor
                            0.78, // Default width and height for Surah 6
                            0.05,
                            0, // No extra padding for Surah 6
                          ),
                          // Surah 7
                          _buildSurahContainer(
                            width,
                            height,
                            7, // Surah 7 (odd)
                            'Shirathalladzina an‘amta ‘alaihim ghairil\n-maghdlubi ‘alaihim wa ladl-dlallin',
                            '(yaitu) jalan orang-orang yang te-\nlah Engkau beri nikmat, bukan (jalan) \n mereka yang dimurkai dan bukan (pula\n jalan) orang -orang yang sesat.',
                            'Idhar halqi, Idhar safawi, Mad Layin, Alif \n Lam Qamariyah, Mad lazim mutsaqqal \n kilmi,  Mad arid lisukun,Al-sya \n msiyah',
                            'assets/images/Alfa7.png',
                            0.430, // Default height factor
                            0.8, // Default width and height for Surah 7
                            0.09,
                            0, // No extra padding for Surah 7
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
      ),
    );
  }

  // Reusable widget for Surah container
  Widget _buildSurahContainer(
      double width,
      double height,
      int surahIndex, // Add index for each Surah
      String surah,
      String meaning,
      String hukumBacaan,
      String imagePath,
      double heightFactor, // Parameter for height adjustment
      double imageWidthPercentage, // Set width percentage for image
      double imageHeightPercentage, // Set height percentage for image
      double surahPadding // Padding for Surah 1
      ) {
    // Set background color for odd and even Surah
    Color backgroundColor = (surahIndex % 2 == 0) ? Color(0xFFDDEB9D) : Color(0xFFFAFDCB);

    // Calculate width and height of image based on percentage
    double imageWidth = width * imageWidthPercentage; // Width in percentage
    double imageHeight = height * imageHeightPercentage; // Height in percentage

    // Initialize color for hukum bacaan
    Color hukumBacaanColor = Colors.black;

    // Set colors for different hukum bacaan
    Map<String, Color> hukumBacaanColors = {
      'Idhar halqi': Color(0xFFF6279C),
      'Idhar safawi': Color(0xFF746C6C),
      'Mad Layin': Color(0xFFF8BD00),
      'Alif Lam Qomariyah': Color(0xFFEC7700),
      'Alif Lam Syamsiyah': Color(0xFF587DBD),
      'Mad arid lisukun': Color(0xFF3EC1D3),
      'Idgham Mimi (Mithlain)': Color(0xFF746C6C),
      'Mad lazim mutsaqqal kilmi': Color(0xFF107A88),
    };

    // Check if the hukumBacaan is in the map, otherwise default to black
    hukumBacaanColor = hukumBacaanColors[hukumBacaan] ?? Colors.black;

    return Container(
      width: width * 2,
      height: height * heightFactor,  // Dynamic height based on heightFactor
      decoration: BoxDecoration(
        color: backgroundColor,  // Use dynamic color based on surah index
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.only(top: surahPadding), // Set top padding for Surah 1
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(60, 20, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      imagePath,
                      width: imageWidth,  // Use dynamic width
                      height: imageHeight,  // Use dynamic height
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 25, 20, 0),
              child: Row(
                children: [
                  Text(
                    surah,
                    style: GoogleFonts.notoNaskhArabic(
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF037A16),
                      fontSize: 17,
                      letterSpacing: 0.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 8, 20, 0),
              child: Row(
                children: [
                  Text(
                    'Artinya: $meaning',
                    style: GoogleFonts.notoNaskhArabic(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      letterSpacing: 0.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 13, 0, 0),
                    child: Text(
                      'Hukum bacaan:',
                      style: GoogleFonts.notoNaskhArabic(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 12,
                        letterSpacing: 0.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(3, 13, 0, 0),
                    child: Text(
                      hukumBacaan,
                      style: GoogleFonts.notoNaskhArabic(
                        fontWeight: FontWeight.w600,
                        color: hukumBacaanColor,  // Use the dynamic color here
                        fontSize: 12,
                        letterSpacing: 0.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
