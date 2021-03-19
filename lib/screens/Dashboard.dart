import 'package:flutter/material.dart';
import '../SideDrawer.dart';

class Dashboard extends StatelessWidget {
  static const route = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text('Private Dashboard Widget'),
      ),
    );
  }
}
