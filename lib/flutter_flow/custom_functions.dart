import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? deleteUserData(String? goal) {
  // Reset all the data that was transferred to user data sub collection
  try {
    // Delete all documents in the user data subcollection
    currentUserReference?.collection('userdata').get().then((snapshot) {
      for (DocumentSnapshot doc in snapshot.docs) {
        doc.reference.delete();
      }
    });
    return 'User data deleted successfully';
  } catch (e) {
    return 'Error deleting user data: $e';
  }
}

String? getSubcollectionData() {
  Future<List<Map<String, dynamic>>> getSubcollectionData(
    String collectionPath,
    String documentId,
    String subcollectionPath,
  ) async {
    try {
      // Get a reference to the subcollection
      CollectionReference subcollectionRef = FirebaseFirestore.instance
          .collection(collectionPath)
          .doc(documentId)
          .collection(subcollectionPath);

      // Query all documents in the subcollection
      QuerySnapshot snapshot = await subcollectionRef.get();

      // Convert documents to a list of maps
      List<Map<String, dynamic>> documents = snapshot.docs.map((doc) {
        return doc.data() as Map<String, dynamic>;
      }).toList();

      return documents;
    } catch (e) {
      print("Error retrieving subcollection data: $e");
      return [];
    }
  }
}
