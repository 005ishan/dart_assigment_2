import 'package:flutter/material.dart';
import 'package:flutter_assignment_2/screens/arithmetic_screen.dart';
import 'package:flutter_assignment_2/screens/dashboard_screen.dart';
import 'package:flutter_assignment_2/screens/palindrome.dart';
import 'package:flutter_assignment_2/screens/simple_Interest_screen.dart';
import 'screens/area_of_circle.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
      
    );
  }
}