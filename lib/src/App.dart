import 'package:flutter/material.dart';
import 'package:login_statefull/src/screens/LoginScreen.dart';

class App extends StatelessWidget {

  Widget build(context){
    return MaterialApp(
      title: 'Login app',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }

}