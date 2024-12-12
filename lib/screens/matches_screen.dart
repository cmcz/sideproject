import 'package:flutter/material.dart';

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data for matches
    final List<Map<String, dynamic>> matches = [
      {
        'name': 'Sarah',
        'lastMessage': 'Hey, how are you?',
        'time': '2m ago',
      },
      {
        'name': 'Emma',
        'lastMessage': 'Nice to meet you!',
        'time': '1h ago',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Matches'),
      ),
      body: ListView.builder(
        itemCount: matches.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text(matches[index]['name']),
            subtitle: Text(matches[index]['lastMessage']),
            trailing: Text(matches[index]['time']),
            onTap: () {
              Navigator.pushNamed(context, '/chat');
            },
          );
        },
      ),
    );
  }
} 