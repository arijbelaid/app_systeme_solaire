import 'package:flutter/material.dart';
import 'login.dart'; // Import the new login page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'نظام شمسي',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: LoginPage(), // Set the login page as the initial page
      debugShowCheckedModeBanner: false,
    );
  }
}
