import 'package:flutter/material.dart';
import '../widgets/swipe_card.dart';
import '../widgets/bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () => Navigator.pushNamed(context, '/profile'),
          ),
        ],
      ),
      body: const SwipeCard(),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

