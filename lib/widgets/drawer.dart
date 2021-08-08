import 'package:flutter/material.dart';
import 'package:yoga/homepage.dart';
import 'package:yoga/loginpage.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var username = name;
    var emailaddress = email;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 300,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: ListView(
                children: [
                  CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/images/logo2.png')),
                  Text(
                    'Harshit Vasih',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    'harshit_v@ceiitr.ac.in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => HomePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.stacked_bar_chart),
            title: Text('Tracker'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
