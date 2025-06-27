import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'signup.dart';
import 'homepage.dart'; // Import HomePage

class LoginModel with ChangeNotifier {
  TextEditingController textController1 = TextEditingController();
  FocusNode textFieldFocusNode1 = FocusNode();

  TextEditingController textController2 = TextEditingController();
  FocusNode textFieldFocusNode2 = FocusNode();

  bool isPasswordVisible = false; // Track password visibility

  // Method to toggle password visibility
  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners(); // Notify listeners when password visibility changes
  }

  // Method to dispose controllers if needed, can be called from outside
  void disposeControllers() {
    textController1.dispose();
    textFieldFocusNode1.dispose();
    textController2.dispose();
    textFieldFocusNode2.dispose();
    super.dispose();
  }
}

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  static String routeName = 'Login';
  static String routePath = '/login';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoginModel(),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          backgroundColor: Color(0xFFFAFFCA),
          body: SafeArea(
            top: true,
            child: Consumer<LoginModel>(builder: (context, model, child) {
              return SingleChildScrollView( // Membuat tampilan bisa di-scroll
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 80), // Memberikan jarak agar TajwidKidz tidak terlalu dekat dengan atas
                      // Tulisan TajwidKidz di luar kotak
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'TajwidKidz', // Nama aplikasi
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.black, // Warna gelap untuk kontras
                          ),
                        ),
                      ),
                      // Kotak Login
                      Container(
                        width: MediaQuery.of(context).size.width * 0.90, // Mengubah menjadi 75% dari lebar layar
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                        decoration: BoxDecoration(
                          color: Color(0xFFb9d4aa), // Latar belakang hijau muda
                          borderRadius: BorderRadius.circular(20), // Sudut membulat
                          boxShadow: [
                            BoxShadow(
                              color: Colors.greenAccent.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Selamat Datang Kembali', // Pesan sambutan
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Colors.black, // Warna hitam
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Isi data di bawah ini untuk mengakses akun Anda.',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 16,
                                color: Colors.black.withOpacity(0.7), // Sedikit transparan untuk memberi kesan modern
                              ),
                            ),
                            SizedBox(height: 40),
                            Text(
                              'Email', // Label untuk email
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            // Email text field with box shadow
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFF037A16), // Shadow color
                                    offset: Offset(0, 2), // Shadow position
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                controller: model.textController1,
                                focusNode: model.textFieldFocusNode1,
                                decoration: InputDecoration(
                                  hintText: 'Masukkan email Anda',
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.green,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.green.withOpacity(0.5),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Kata Sandi', // Label untuk password
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            // Password text field with box shadow
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFF037A16), // Shadow color
                                    offset: Offset(0, 2), // Shadow position
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                controller: model.textController2,
                                focusNode: model.textFieldFocusNode2,
                                obscureText: !model.isPasswordVisible, // Toggle password visibility
                                decoration: InputDecoration(
                                  hintText: 'Masukkan kata sandi Anda',
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.green,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.green.withOpacity(0.5),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      model.isPasswordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.black,
                                    ),
                                    onPressed: model.togglePasswordVisibility, // Toggle password visibility
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.75, // Menambah lebar tombol
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Navigate to HomePage after successful login
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(builder: (context) => HomePageWidget()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF037A16), // Tombol dengan warna hijau
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    padding: EdgeInsets.symmetric(vertical: 12), // Tinggi tombol
                                  ),
                                  child: Text('Masuk', style: TextStyle(fontSize: 25)),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Belum punya akun? ',
                                  style: TextStyle(fontSize: 16),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => SignupWidget()),
                                    );
                                  },
                                  child: Text(
                                    'Daftar',
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Atau masuk dengan', style: TextStyle(fontSize: 16)),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: FaIcon(
                                    FontAwesomeIcons.google,
                                    color: Colors.redAccent,
                                    size: 20,
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
              );
            }),
          ),
        ),
      ),
    );
  }
}
