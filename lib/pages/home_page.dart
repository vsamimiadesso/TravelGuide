import "dart:io";
import 'package:flutter/material.dart';
import '../services/camera_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _lastPhotoPath;

  Future<void> _takePhoto() async {
    final path = await CameraService.takePhoto();
    if (path != null) {
      setState(() {
        _lastPhotoPath = path;
      });
      // TODO: send photo to Vision API and navigate to details page
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Smart Tourist Guide')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_lastPhotoPath != null)
              Image.file(
                File(_lastPhotoPath!),
                height: 200,
              ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _takePhoto,
              child: const Text('Take Photo'),
            ),
          ],
        ),
      ),
    );
  }
}
