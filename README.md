# Smart Tourist Guide

This repository contains a simple Flutter application scaffold for the **Smart Tourist Guide**. The project demonstrates basic navigation and service layers that can be extended to integrate Google Cloud APIs and Firebase. The voice and translation features are powered by the OpenAI API.

## Structure
- `lib/main.dart` – entry point with routing and provider setup.
- `lib/pages/` – UI pages: `HomePage`, `LandmarkDetailPage`, `NearbyRecommendationsPage`, `SettingsPage`.
- `lib/services/` – service stubs for camera, landmark detection, translations, speech, and location.
- `lib/providers/` – example provider for user preferences.

The actual API integrations (Firebase, Google Cloud) are left as TODOs and need to be implemented.

## Getting Started
1. Ensure Flutter SDK is installed.
2. Run `flutter pub get` to fetch dependencies.
3. Use `flutter run` to launch the application on a device or emulator.
4. Provide an `OPENAI_API_KEY` environment variable for translation and speech services.
