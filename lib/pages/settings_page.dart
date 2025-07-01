import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/preferences_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final prefs = Provider.of<PreferencesProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Language'),
            DropdownButton<String>(
              value: prefs.language,
              onChanged: (value) {
                if (value != null) {
                  prefs.setLanguage(value);
                }
              },
              items: const [
                DropdownMenuItem(value: 'en', child: Text('English')),
                DropdownMenuItem(value: 'de', child: Text('German')),
                DropdownMenuItem(value: 'fr', child: Text('French')),
              ],
            ),
            const SizedBox(height: 16),
            const Text('Travel Mode'),
            DropdownButton<String>(
              value: prefs.travelMode,
              onChanged: (value) {
                if (value != null) {
                  prefs.setTravelMode(value);
                }
              },
              items: const [
                DropdownMenuItem(value: 'walking', child: Text('Walking')),
                DropdownMenuItem(value: 'driving', child: Text('Driving')),
                DropdownMenuItem(value: 'biking', child: Text('Biking')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
