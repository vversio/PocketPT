// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> newCustomAction2() async {
  try {
    // Get the current user
    User? user = FirebaseAuth.instance.currentUser;

    if (user == null) {
      throw Exception("User not authenticated");
    }

    // Get a reference to the rehabilitation_plan collection under the user's document
    CollectionReference rehabPlanRef = FirebaseFirestore.instance
        .collection('user_email_accounts')
        .doc(user.uid)
        .collection('rehabilitation_plan');

    // Get all documents within the rehabilitation_plan collection
    QuerySnapshot snapshot = await rehabPlanRef.get();

    // Loop through and delete each document
    for (QueryDocumentSnapshot doc in snapshot.docs) {
      await doc.reference.delete();
    }

    print('Rehabilitation plan deleted successfully');
  } catch (e) {
    print('Error deleting rehabilitation plan: $e');
  }
}
