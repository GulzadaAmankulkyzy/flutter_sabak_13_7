// import 'dart:html';

// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_sabak_13_7/home_page.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key, required String title});
  String Login = '';
  String Password = '';
  bool hidePass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('loginPage'),
      ),
      body: Column(
        children: [
          CircleAvatar(),
          Container(
            width: 300,
            height: 300,
            child: Expanded(
              child: Image.asset('assets/rte.jpeg'),
            ),
          ),
          // Image.asset('rte.jpeg'),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (log) {
                Login = log;
                print(log);
              },
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.account_circle),
                border: OutlineInputBorder(),
                hintText: 'login',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (pas) {
                Password = pas;
                print(pas);
              },
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.visibility),
                  border: OutlineInputBorder(),
                  hintText: 'Password'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (Login == 'gulzada@gmail.com' && Password == '40034591') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  backgroundColor: Colors.blue,
                  duration: Duration(seconds: 5),
                  content: Center(
                    child: Text(
                      'Error messege',
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  ),
                ));
              }
            },
            child: const Text('entrance'),
          )
        ],
      ),
    );
  }
}
