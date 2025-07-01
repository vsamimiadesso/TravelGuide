import 'package:flutter/foundation.dart';

class PreferencesProvider extends ChangeNotifier {
  String language = 'en';
  String travelMode = 'walking';

  void setLanguage(String value) {
    language = value;
    notifyListeners();
  }

  void setTravelMode(String value) {
    travelMode = value;
    notifyListeners();
  }
}
