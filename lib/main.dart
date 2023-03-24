
import 'package:flutter/material.dart';
import 'package:login_system/screen/singin_screen/singin.dart';

import 'screen/home_screen.dart';
import 'screen/login_screen/login.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Login_Screen(),
        'signUp': (context) => SignUpScreen(),
        'Home': (context) => Home_Screen(),

      },
    ),
  );
}