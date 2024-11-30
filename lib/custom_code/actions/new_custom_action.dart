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

Future<void> newCustomAction() async {
  // Delete the logged-in user's subcollection 'userdata' in Firestore

  // Get the current logged-in user
  User? user = FirebaseAuth.instance.currentUser;

  // Check if user is authenticated
  if (user == null) {
    print('No user is logged in.');
    return;
  }

  // Reference to the user's 'userdata' subcollection within 'user_email_accounts'
  CollectionReference userdataRef = FirebaseFirestore.instance
      .collection('user_email_accounts')
      .doc(user.uid)
      .collection('userdata');

  try {
    // Get all documents in the 'userdata' subcollection
    QuerySnapshot userdataSnapshot = await userdataRef.get();

    // Delete each document in the 'userdata' subcollection
    for (DocumentSnapshot doc in userdataSnapshot.docs) {
      await doc.reference.delete();
    }

    print('Userdata deleted successfully');
  } catch (e) {
    print('Error deleting userdata: $e');
  }
}
