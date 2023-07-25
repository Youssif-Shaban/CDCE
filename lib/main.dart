import 'package:flutter/material.dart';
import 'package:rosheta/Doctors.dart';
import 'package:rosheta/Prescription.dart';

import 'Login/login.dart';
import 'Screen_3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginScreen());
  }
}
