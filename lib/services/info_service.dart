class InfoService {
  // TODO: fetch description, opening hours, ticket info from Wikipedia or other sources
  static Future<String> fetchDescription(String landmark) async {
    // Placeholder description
    await Future.delayed(const Duration(milliseconds: 500));
    return 'Description for ' + landmark + '.';
  }
}
