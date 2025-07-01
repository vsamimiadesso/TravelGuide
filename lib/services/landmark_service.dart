class LandmarkService {
  // TODO: integrate Google Cloud Vision API and Firestore caching
  static Future<String> detectLandmark(String imagePath) async {
    // Placeholder: returns dummy landmark name
    await Future.delayed(const Duration(seconds: 1));
    return 'Sample Landmark';
  }
}
