import 'package:flutter/material.dart';

class LandmarkDetailPage extends StatelessWidget {
  const LandmarkDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: display landmark details, translation, and audio
    return Scaffold(
      appBar: AppBar(title: const Text('Landmark Details')),
      body: const Center(
        child: Text('Landmark details will appear here.'),
      ),
    );
  }
}
