import 'package:flutter/material.dart';
import 'screens/CryptoScreen.dart';
import 'screens/Dashboard.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        Dashboard.route: (context) => Dashboard(),
        CryptoScreen.route: (context) => CryptoScreen(),
      },
    );
  }
}
