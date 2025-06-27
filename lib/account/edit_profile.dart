import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  XFile? _imageFile;

  // Fungsi untuk memilih gambar
  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      // Menyimpan gambar di penyimpanan lokal
      final Directory directory = await getApplicationDocumentsDirectory();
      final String filePath = '${directory.path}/${pickedFile.name}';
      final File localFile = File(filePath);

      // Menyalin gambar yang dipilih ke penyimpanan lokal
      await localFile.writeAsBytes(await pickedFile.readAsBytes());

      setState(() {
        _imageFile = XFile(localFile.path); // Menyimpan path gambar
      });
    }
  }

  // Fungsi untuk menyimpan perubahan
  void _saveChanges() {
    String username = _usernameController.text;
    String email = _emailController.text;

    if (username.isEmpty || email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Harap lengkapi semua kolom!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Perubahan berhasil disimpan')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFDCB), // Mengubah warna latar belakang ke #FAFDCB
      appBar: AppBar(
        backgroundColor: const Color(0xFF037A16),
        title: const Text('Edit Profil'),
        elevation: 0, // Flat AppBar
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Foto Profil
            GestureDetector(
              onTap: _pickImage,
              child: Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.green.shade700,
                  backgroundImage: _imageFile != null
                      ? FileImage(File(_imageFile!.path))
                      : null,
                  child: _imageFile == null
                      ? const Icon(
                    Icons.camera_alt,
                    size: 40,
                    color: Colors.white,
                  )
                      : null,
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Edit Username
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade100,
                labelText: 'Username',
                hintText: 'Masukkan username baru',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
              ),
            ),
            const SizedBox(height: 20),

            // Edit Email
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade100,
                labelText: 'Email',
                hintText: 'Masukkan email baru (jika diperlukan)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
              ),
            ),
            const SizedBox(height: 30),

            // Simpan Button
            Center(
              child: SizedBox(
                width: double.infinity, // Ensures the button takes full width
                child: ElevatedButton(
                  onPressed: _saveChanges,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: const Color(0xFF037A16), // Button color
                  ),
                  child: const Text(
                    'Simpan Perubahan',
                    style: TextStyle(fontSize: 16, color: Colors.black), // Black text color
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
