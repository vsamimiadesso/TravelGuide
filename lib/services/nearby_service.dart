class NearbyService {
  // TODO: integrate Google Maps Places API
  static Future<List<String>> fetchNearbyPlaces() async {
    await Future.delayed(const Duration(seconds: 1));
    return ['Place A', 'Place B'];
  }
}
