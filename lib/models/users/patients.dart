// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class Patients {
  final String id;
  final String username;
  final String email;
  final String password;
  final String address;
  final String age;
  final String phoneNumber;
  final String condition;
  final String imageUrl;
  final String progress;
  final List treatment;

  Patients({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    required this.address,
    required this.age,
    required this.phoneNumber,
    required this.condition,
    required this.imageUrl,
    this.progress = '0',
    this.treatment = const [],
  });

  // toJson() {
  //   return {
  //     'id': id,
  //     'username': username,
  //     'email': email,
  //     'password': password,
  //     'address': address,
  //     'age': age,
  //     'phoneNumber': phoneNumber,
  //     'condition': condition,
  //     'imageUrl': imageUrl
  //   };
  // }
  // factory Patients.fromSnap

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'email': email,
      'password': password,
      'address': address,
      'age': age,
      'phoneNumber': phoneNumber,
      'condition': condition,
      'imageUrl': imageUrl,
      'progress': progress,
      'treatment': treatment,
    };
  }

  factory Patients.fromMap(DocumentSnapshot<Map<String, dynamic>> doc) {
    final map = doc.data();
    return Patients(
        id: map!['id'] as String,
        username: map['username'] as String,
        email: map['email'] as String,
        password: map['password'] as String,
        address: map['address'] as String,
        age: map['age'] as String,
        phoneNumber: map['phoneNumber'] as String,
        condition: map['condition'] as String,
        imageUrl: map['imageUrl'] as String,
        progress: map['progress'] as String,
        treatment: List.from(
          (map['treatment'] as List),
        ));
  }

  String toJson() => json.encode(toMap());

  factory Patients.fromJson(String source) =>
      Patients.fromMap(json.decode(source));
}
