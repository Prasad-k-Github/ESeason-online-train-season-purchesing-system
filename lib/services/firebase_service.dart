// lib/services/firebase_service.dart

import 'package:firebase_database/firebase_database.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';

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
    required BuildContext context, // Add context to navigate
  }) async {
    try {
      // Hash the password
      String hashedPassword = _hashPassword(password);

      // Store user data in the database
      await _databaseReference.child('general_passenger').push().set({
        'fullName': fullName,
        'address': address,
        'nic': nic,
        'email': email,
        'phone': phone,
        'password': hashedPassword, // Store the hashed password
        'createdAt': DateTime.now().toIso8601String(),
      });

      Navigator.pushReplacementNamed(context, '/dashboard');
    } catch (e) {
      print('Error adding passenger: $e');
      throw e;
    }
  }

  Future<bool> loginUser({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      // Hash the password
      String hashedPassword = _hashPassword(password);

      // Retrieve user data from the database
      DatabaseEvent event = await _databaseReference
          .child('general_passenger')
          .orderByChild('email')
          .equalTo(email)
          .once();

      DataSnapshot snapshot = event.snapshot;

      if (snapshot.value != null) {
        Map<dynamic, dynamic> userData =
            snapshot.value as Map<dynamic, dynamic>;
        bool isValidUser = false;
        userData.forEach((key, value) {
          if (value['password'] == hashedPassword) {
            isValidUser = true;
            Navigator.pushReplacementNamed(context, '/dashboard');
          }
        });
        if (!isValidUser) {
          throw Exception('Invalid password');
        }
        return true;
      } else {
        throw Exception('User not found');
      }
    } catch (e) {
      print('Error logging in: $e');
      throw e;
    }
  }

  String _hashPassword(String password) {
    final bytes = utf8.encode(password);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }
}
