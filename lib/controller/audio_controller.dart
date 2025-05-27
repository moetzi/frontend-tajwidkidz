import 'package:audioplayers/audioplayers.dart';
import 'package:firebase_storage/firebase_storage.dart';

class AudioController {
  final AudioPlayer _player = AudioPlayer();

  AudioController() {
    // Optional: you can set up any init logic here
  }

  Future<void> play(String fileName) async {
    try {
      final ref = FirebaseStorage.instance.ref('Audios/$fileName');
      final url = await ref.getDownloadURL();
      await _player.play(UrlSource(url));
    } catch (e) {
      print("Audio playback error: $e");
    }
  }

  Future<void> pause() async {
    await _player.pause();
  }

  Future<void> stop() async {
    await _player.stop();
  }

  // Expose player state stream for UI to listen
  Stream<PlayerState> get playerStateStream => _player.onPlayerStateChanged;

  // Optional getter for current state (async)
  Future<PlayerState> get currentState async => _player.state;
}
