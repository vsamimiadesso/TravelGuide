import 'package:provider/provider.dart';
import 'providers/preferences_provider.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/landmark_detail_page.dart';
import 'pages/nearby_recommendations_page.dart';
import 'pages/settings_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const SmartTouristGuideApp());
}

class SmartTouristGuideApp extends StatelessWidget {
  const SmartTouristGuideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PreferencesProvider(),
      child: MaterialApp(
        title: 'Smart Tourist Guide',
        theme: ThemeData(useMaterial3: true),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/landmark': (context) => const LandmarkDetailPage(),
          '/nearby': (context) => const NearbyRecommendationsPage(),
          '/settings': (context) => const SettingsPage(),
        },
      ),
    );
  }
}
