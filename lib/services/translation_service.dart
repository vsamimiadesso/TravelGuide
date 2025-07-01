import 'dart:convert';
import 'package:http/http.dart' as http;

/// Provides translation using the OpenAI API.
class TranslationService {
  static const _endpoint = 'https://api.openai.com/v1/chat/completions';

  /// Translates [text] into the target [lang] using ChatGPT.
  static Future<String> translate(String text, String lang) async {
    final apiKey = const String.fromEnvironment('OPENAI_API_KEY');
    final response = await http.post(
      Uri.parse(_endpoint),
      headers: {
        'Authorization': 'Bearer $apiKey',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'model': 'gpt-3.5-turbo',
        'messages': [
          {
            'role': 'system',
            'content': 'Translate the following text to $lang.',
          },
          {
            'role': 'user',
            'content': text,
          }
        ],
        'max_tokens': 200,
      }),
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      return json['choices'][0]['message']['content'] as String;
    } else {
      throw Exception('Translation failed: ${response.body}');
    }
  }
}
