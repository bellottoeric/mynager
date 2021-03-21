import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseInit extends StatefulWidget {
  _FirebaseInit createState() => _FirebaseInit();
}

class _FirebaseInit extends State<FirebaseInit> {
  // Set default `_initialized` and `_error` state to false
  bool _initialized = false;
  bool _error = false;

  static bool initialized = false;

  // Define an async function to initialize FlutterFire
  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Show error message if initialization failed
    if (_error) {
      print('Initialize fail');
    }

    // Show a loader until FlutterFire is initialized
    if (!_initialized) {
      print('Loading');
    }
    print('Initilisation OK');

    //return MyAwesomeApp();
  }
}
