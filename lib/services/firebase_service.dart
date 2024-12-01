// lib/services/firebase_service.dart

import 'package:firebase_database/firebase_database.dart';

class FirebaseService {
  final DatabaseReference _databaseReference =
      FirebaseDatabase.instance.reference();

  Future<void> addPassenger({
    required String fullName,
    required String address,
    required String nic,
    required String email,
    required String phone,
  }) async {
    try {
      await _databaseReference.child('general_passenger').push().set({
        'fullName': fullName,
        'address': address,
        'nic': nic,
        'email': email,
        'phone': phone,
        'otpVerified': false,
        'createdAt': DateTime.now().toIso8601String(),
      });
    } catch (e) {
      print('Error adding passenger: $e');
      throw e;
    }
  }
}
