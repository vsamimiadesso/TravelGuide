import 'package:flutter/material.dart';

class NearbyRecommendationsPage extends StatelessWidget {
  const NearbyRecommendationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: show nearby attractions with distance and travel time
    return Scaffold(
      appBar: AppBar(title: const Text('Nearby Recommendations')),
      body: const Center(
        child: Text('Nearby recommendations will appear here.'),
      ),
    );
  }
}
