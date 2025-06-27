import 'package:flutter/material.dart';
import 'feedback_ai.dart'; // Mengimpor halaman Feedback AI
import 'edit_profile.dart'; // Mengimpor halaman Edit Profile
import 'package:shared_preferences/shared_preferences.dart'; // SharedPreferences untuk logout
import 'package:untitled/login.dart'; // Pastikan halaman login sudah ada
import 'help_support.dart'; // Mengimpor halaman Bantuan & Dukungan
import 'settings.dart'; // Mengimpor halaman Pengaturan Akun

class AccountWidget extends StatefulWidget {
  const AccountWidget({super.key});

  @override
  _AccountWidgetState createState() => _AccountWidgetState();
}

class _AccountWidgetState extends State<AccountWidget> {

  // Fungsi logout
  Future<void> _logout(BuildContext context) async {
    // Menampilkan dialog konfirmasi logout
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Konfirmasi Logout'),
          content: const Text('Apakah Anda yakin ingin keluar?'),
          actions: [
            // Tombol Batal
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Menutup dialog jika batal
              },
              child: const Text('Batal'),
            ),
            // Tombol Ya (Logout)
            TextButton(
              onPressed: () async {
                // Hapus token atau data sesi lainnya
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.remove('auth_token'); // Hapus token atau data sesi

                // Arahkan ke halaman login setelah logout
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginWidget()),
                );
              },
              child: const Text('Ya'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFDCB),
      appBar: AppBar(
        backgroundColor: const Color(0xFF037A16),
        elevation: 0,
        title: const Text(
          'Akun Saya',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Card untuk Profil Pengguna
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Avatar
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.green.shade700,
                        child: const Icon(
                          Icons.person,
                          size: 60,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 16),
                      // Nama dan Email
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Nadia Salsabila',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'nadia@email.com',
                            style: TextStyle(fontSize: 16, color: Colors.black54),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // List menu fitur
              Expanded(
                child: ListView(
                  children: [
                    _buildMenuItem(
                      icon: Icons.edit,
                      label: 'Edit Profil',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EditProfilePage()),
                        );
                      },
                    ),
                    _buildMenuItem(
                      icon: Icons.assistant,
                      label: 'Feedback AI',
                      onTap: () {
                        // Navigasi ke halaman Feedback AI
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const FeedbackAIPage()),
                        );
                      },
                    ),
                    _buildMenuItem(
                      icon: Icons.star,
                      label: 'Tantangan & Pencapaian',
                      onTap: () {
                        // Navigasi ke halaman Tantangan dan Pencapaian
                      },
                    ),
                    _buildMenuItem(
                      icon: Icons.help,
                      label: 'Bantuan & Support',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HelpSupportPage()),
                        );
                      },
                    ),
                    _buildMenuItem(
                      icon: Icons.settings,
                      label: 'Pengaturan Akun',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const AccountSettingsPage()),
                        );
                      },
                    ),
                    _buildMenuItem(
                      icon: Icons.logout,
                      label: 'Keluar',
                      onTap: () {
                        _logout(context); // Panggil fungsi logout dengan konfirmasi
                      },
                      backgroundColor: Colors.red.shade100, // Warna logout lebih menonjol
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Menu Item dengan background lebih lembut
  Widget _buildMenuItem({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
    Color backgroundColor = const Color(0xFFE8F5E9), // Warna latar belakang lembut
  }) {
    return Card(
      color: backgroundColor, // Ganti warna latar belakang item
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Membuat sudut lebih halus
      ),
      elevation: 4, // Sedikit bayangan untuk elemen yang lebih modern
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.green.shade700), // Warna ikon lebih cerah
        title: Text(
          label,
          style: const TextStyle(fontSize: 16, color: Colors.black87),
        ),
        trailing: const Icon(Icons.chevron_right, color: Colors.green),
        onTap: onTap,
      ),
    );
  }
}
