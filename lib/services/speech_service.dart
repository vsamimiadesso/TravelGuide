import 'dart:convert';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

/// Generates speech audio using the OpenAI API.
class SpeechService {
  static final AudioPlayer _player = AudioPlayer();
  static const _endpoint = 'https://api.openai.com/v1/audio/speech';

  /// Generates audio for [text] and plays it back.
  static Future<void> speak(String text) async {
    final apiKey = const String.fromEnvironment('OPENAI_API_KEY');
    final response = await http.post(
      Uri.parse(_endpoint),
      headers: {
        'Authorization': 'Bearer $apiKey',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'model': 'tts-1',
        'input': text,
        'voice': 'alloy',
        'response_format': 'mp3',
      }),
    );

    if (response.statusCode == 200) {
      final dir = await getTemporaryDirectory();
      final file = File('${dir.path}/speech_${DateTime.now().millisecondsSinceEpoch}.mp3');
      await file.writeAsBytes(response.bodyBytes);
      await _player.play(DeviceFileSource(file.path));
    } else {
      throw Exception('Speech generation failed: ${response.body}');
    }
  }
}
