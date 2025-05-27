import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:untitled/Modul4_MacamTajwid/data/macam_tajwid.dart';
import 'package:untitled/Modul4_MacamTajwid/models/tajwid_model.dart';

class MacamTajwidViewModel extends ChangeNotifier {
  final List<TajwidModel> _tajwidList = susunHurufQuestions;
  late FlutterTts flutterTts;
  bool _isTtsInitSuccessful = false;

  List<TajwidModel> get tajwidList => _tajwidList;
  bool get isTtsReady => _isTtsInitSuccessful;

  MacamTajwidViewModel() {
    flutterTts = FlutterTts();
    _initTts();
  }

  Future<void> _initTts() async {
    print("TTS: Memulai inisialisasi TTS...");

    flutterTts.setStartHandler(() {
      print("TTS: EVENT - Mulai berbicara");
    });

    flutterTts.setCompletionHandler(() {
      print("TTS: EVENT - Selesai berbicara");
    });

    flutterTts.setErrorHandler((msg) {
      print("TTS: EVENT - Error: $msg");
      _isTtsInitSuccessful = false;
      notifyListeners();
    });

    flutterTts.setCancelHandler(() {
      print("TTS: EVENT - Pembatalan berbicara");
    });

    try {
      final List<dynamic> languages = await flutterTts.getLanguages;
      print("TTS: Available languages: $languages");

      String selectedLanguage = languages.contains("id-ID") ? "id-ID" : "en-US";
      bool isAvailable = await flutterTts.isLanguageAvailable(selectedLanguage);

      print("TTS: Selected language: $selectedLanguage, available: $isAvailable");

      if (!isAvailable) {
        _isTtsInitSuccessful = false;
        return;
      }

      await flutterTts.setLanguage(selectedLanguage);
      await flutterTts.setSpeechRate(0.5); // 0.8 kadang terlalu cepat untuk teks panjang
      await flutterTts.setVolume(1.0);
      await flutterTts.setPitch(1.0);
      await flutterTts.awaitSpeakCompletion(true);

      await Future.delayed(const Duration(milliseconds: 500)); // Delay untuk stabilisasi

      _isTtsInitSuccessful = true;
      print("TTS: Inisialisasi berhasil.");
    } catch (e) {
      print("TTS: Gagal inisialisasi TTS: $e");
      _isTtsInitSuccessful = false;
    }

    notifyListeners();
  }

  Future<void> speak(String text) async {
    if (!_isTtsInitSuccessful) {
      print("TTS: Belum siap. Inisialisasi ulang...");
      await _initTts();
      if (!_isTtsInitSuccessful) {
        print("TTS: Inisialisasi gagal. Speak dibatalkan.");
        return;
      }
    }

    try {
      await flutterTts.stop();

      final List<String> chunks = _splitTextIntoChunks(text, maxChunkLength: 80);

      for (String chunk in chunks) {
        print("TTS: Speaking chunk: '${chunk.length > 50 ? chunk.substring(0, 50) + "..." : chunk}'");

        final result = await flutterTts.speak(chunk);

        // Tunggu sampai selesai sebelum lanjut ke chunk berikutnya
        await Future.delayed(const Duration(milliseconds: 500));
        await flutterTts.awaitSpeakCompletion(true);

        if (result == null || result == 0) {
          print("TTS: Error memutar chunk.");
          break;
        }
      }
    } catch (e) {
      print("TTS: Exception saat speak: $e");
    }
  }

  List<String> _splitTextIntoChunks(String text, {int maxChunkLength = 80}) {
    final List<String> chunks = [];
    for (int i = 0; i < text.length; i += maxChunkLength) {
      final end = (i + maxChunkLength < text.length) ? i + maxChunkLength : text.length;
      chunks.add(text.substring(i, end));
    }
    return chunks;
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }
}
