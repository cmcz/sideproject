import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class SwipeCard extends StatelessWidget {
  const SwipeCard({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data for testing
    final List<Map<String, dynamic>> users = [
      {
        'name': 'Sarah',
        'age': 25,
        'image': 'https://placeholder.com/150',
        'distance': '2 km away'
      },
      {
        'name': 'Emma',
        'age': 28,
        'image': 'https://placeholder.com/150',
        'distance': '3 km away'
      },
      {
        'name': 'Lisa',
        'age': 24,
        'image': 'https://placeholder.com/150',
        'distance': '1 km away'
      },
    ];

    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Card(
          margin: const EdgeInsets.all(16),
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                    color: Colors.grey[300],
                  ),
                  child: const Center(
                    child: Icon(Icons.person, size: 100),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${users[index]['name']}, ${users[index]['age']}',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      users[index]['distance'],
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      itemCount: users.length,
      layout: SwiperLayout.STACK,
      itemWidth: MediaQuery.of(context).size.width * 0.85,
      itemHeight: MediaQuery.of(context).size.height * 0.7,
    );
  }
} 