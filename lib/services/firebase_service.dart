// lib/services/firebase_service.dart

import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseService {
  final DatabaseReference _databaseReference =
      FirebaseDatabase.instance.reference();

  Future<void> addPassenger({
    required String fullName,
    required String address,
    required String nic,
    required String email,
    required String phone,
    required String password,
  }) async {
    try {
      // Create a new user with email and password
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Store additional user data in the database
      await _databaseReference
          .child('general_passenger')
          .child(userCredential.user!.uid)
          .set({
        'fullName': fullName,
        'address': address,
        'nic': nic,
        'email': email,
        'phone': phone,
        'createdAt': DateTime.now().toIso8601String(),
      });
    } catch (e) {
      print('Error adding passenger: $e');
      throw e;
    }
  }
}
