class UserProfile {
  final String id;
  final String name;
  final int age;
  final String bio;
  final String imageUrl;
  final double latitude;
  final double longitude;

  UserProfile({
    required this.id,
    required this.name,
    required this.age,
    required this.bio,
    required this.imageUrl,
    required this.latitude,
    required this.longitude,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      id: json['id'],
      name: json['name'],
      age: json['age'],
      bio: json['bio'],
      imageUrl: json['imageUrl'],
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }
}

