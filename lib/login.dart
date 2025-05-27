import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'homepage.dart';
import 'signup.dart';
import 'auth_service.dart';

class LoginModel with ChangeNotifier {
  TextEditingController textController1 = TextEditingController(); // Email
  FocusNode textFieldFocusNode1 = FocusNode();

  TextEditingController textController2 = TextEditingController(); // Password
  FocusNode textFieldFocusNode2 = FocusNode();

  bool isPasswordVisible = false;

  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }

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

  void _showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  Future<void> _handleEmailLogin(BuildContext context, LoginModel model) async {
    final email = model.textController1.text.trim();
    final password = model.textController2.text;

    try {
      final user = await AuthService.signInWithEmailPassword(email, password);
      if (user != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePageWidget()),
        );
      }
    } catch (e) {
      _showSnackbar(context, e.toString().replaceAll('Exception: ', ''));
    }
  }

  Future<void> _handleGoogleLogin(BuildContext context) async {
    try {
      final user = await AuthService.signInWithGoogle();
      if (user != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePageWidget()),
        );
      }
    } catch (e) {
      _showSnackbar(context, e.toString().replaceAll('Exception: ', ''));
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoginModel(),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: const Color(0xFFFAFDCB),
          body: SafeArea(
            top: true,
            child: Consumer<LoginModel>(
              builder: (context, model, child) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 150),
                      const Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 25),
                      _buildInputLabel('Email'),
                      _buildTextField(model.textController1, model.textFieldFocusNode1, 'Email'),
                      const SizedBox(height: 25),
                      _buildInputLabel('Password'),
                      _buildPasswordField(model),
                      const SizedBox(height: 10),
                      const Text(
                        'Lupa Password ?',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 60),
                      _buildLoginButton(context, model),
                      const SizedBox(height: 20),
                      _buildSignupRedirect(context),
                      const SizedBox(height: 30),
                      _buildGoogleLogin(context),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInputLabel(String label) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: Text(
          label,
          style: const TextStyle(
            fontFamily: 'Inter',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, FocusNode focusNode, String hint) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Color(0xFF037A16), offset: Offset(0, 2))],
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextFormField(
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
            hintText: '$hint\n',
            filled: true,
            fillColor: Colors.white,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          ),
          style: const TextStyle(fontSize: 16, fontFamily: 'Inter'),
          cursorColor: Colors.black,
        ),
      ),
    );
  }

  Widget _buildPasswordField(LoginModel model) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Color(0xFF037A16), offset: Offset(0, 2))],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: model.textController2,
                focusNode: model.textFieldFocusNode2,
                obscureText: !model.isPasswordVisible,
                decoration: const InputDecoration(
                  hintText: 'Password\n',
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                ),
                style: const TextStyle(fontSize: 16, fontFamily: 'Inter'),
                cursorColor: Colors.black,
              ),
            ),
            IconButton(
              icon: Icon(
                model.isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                color: Colors.black,
              ),
              onPressed: model.togglePasswordVisibility,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context, LoginModel model) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: SizedBox(
        width: double.infinity,
        height: 48,
        child: ElevatedButton(
          onPressed: () => _handleEmailLogin(context, model),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF037A16),
            foregroundColor: Colors.black,
            textStyle: const TextStyle(fontFamily: 'Inter Tight', fontSize: 24),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: const Text('Login'),
        ),
      ),
    );
  }

  Widget _buildSignupRedirect(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Don’t have an account ? ', style: TextStyle(fontSize: 16, fontFamily: 'Inter')),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SignupWidget()));
          },
          child: const Text(
            'Sign Up',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, fontFamily: 'Inter'),
          ),
        ),
      ],
    );
  }

  Widget _buildGoogleLogin(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Login With', style: TextStyle(fontFamily: 'Inter', fontSize: 16)),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.google, color: Color(0xFFB5584E), size: 20),
            onPressed: () => _handleGoogleLogin(context),
          ),
        ],
      ),
    );
  }
}
