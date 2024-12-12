import 'package:geolocator/geolocator.dart';
import '../models/user_profile.dart';

class GeoService {
  Future<Position> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }
    
    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }

  Future<List<UserProfile>> getNearbyProfiles(double latitude, double longitude) async {
    // This is a mock implementation. In a real app, you would make an API call to your backend.
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    return [
      UserProfile(
        id: '1',
        name: 'Alice',
        age: 28,
        bio: 'Love hiking and photography',
        imageUrl: 'https://example.com/alice.jpg',
        latitude: latitude + 0.01,
        longitude: longitude + 0.01,
      ),
      UserProfile(
        id: '2',
        name: 'Bob',
        age: 32,
        bio: 'Foodie and travel enthusiast',
        imageUrl: 'https://example.com/bob.jpg',
        latitude: latitude - 0.01,
        longitude: longitude - 0.01,
      ),
      // Add more mock profiles here
    ];
  }
}

