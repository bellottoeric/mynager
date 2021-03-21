import 'package:flutter/material.dart';
import './screens/Dashboard.dart';
import './screens/CryptoScreen.dart';
import 'package:provider/provider.dart';
import '../firebase/authentication_service.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                "Dashboard Widget's",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Dashboard'),
            onTap: () => {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) => Dashboard(),
                  transitionDuration: Duration(seconds: 0),
                ),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Crypto'),
            onTap: () => {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) =>
                      CryptoScreen(),
                  transitionDuration: Duration(seconds: 0),
                ),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Disconnection'),
            onTap: () {
              context.read<AuthenticationService>().signOut();
            },
          ),
        ],
      ),
    );
  }
}
