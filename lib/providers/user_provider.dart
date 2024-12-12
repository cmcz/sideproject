import 'package:flutter/foundation.dart';

class UserProvider with ChangeNotifier {
  String? _userId;
  String? _name;
  String? _photoUrl;
  int? _age;
  String? _bio;

  String? get userId => _userId;
  String? get name => _name;
  String? get photoUrl => _photoUrl;
  int? get age => _age;
  String? get bio => _bio;

  void updateUserProfile({
    String? name,
    String? photoUrl,
    int? age,
    String? bio,
  }) {
    _name = name ?? _name;
    _photoUrl = photoUrl ?? _photoUrl;
    _age = age ?? _age;
    _bio = bio ?? _bio;
    notifyListeners();
  }
} 