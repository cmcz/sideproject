import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/matches_screen.dart';
import 'screens/chat_screen.dart';
import 'providers/user_provider.dart';
import 'providers/location_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => LocationProvider()),
      ],
      child: MaterialApp(
        title: 'Geo Dating App',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.pink,
            secondary: Colors.pinkAccent,
          ),
          useMaterial3: true,
          fontFamily: 'Roboto',
        ),
        home: const HomeScreen(),
        routes: {
          '/profile': (context) => const ProfileScreen(),
          '/matches': (context) => const MatchesScreen(),
          '/chat': (context) => const ChatScreen(),
        },
      ),
    );
  }
}

