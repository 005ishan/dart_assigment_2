import 'package:flutter/material.dart';
import 'package:flutter_assignment_2/screens/area_of_circle.dart';
import 'package:flutter_assignment_2/screens/arithmetic_screen.dart';
import 'package:flutter_assignment_2/screens/palindrome.dart';
import 'package:flutter_assignment_2/screens/simple_Interest_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard", style: TextStyle(color: Colors.white, fontSize: 20),),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ), onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const ArithmeticScreen(),
                  ),
                );
          }, child: Text("Arithmetic Screen", style: TextStyle(color: Colors.white),))),
          SizedBox(height: 20,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
              ),onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const SimpleInterestScreen(),
                  ),
                );
          }, child: Text("Simple Interest Screen", style: TextStyle(color: Colors.white),))),
          SizedBox(height: 20,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 28, 212, 0),
              ),onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const AreaOfCircleScreen(),
                  ),
                );
          }, child: Text("Area of Circle Screen", style: TextStyle(color: Colors.white),))),
          SizedBox(height: 20,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:  const Color.fromARGB(255, 119, 34, 255),
              ),onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const PalindromeScreen(),
                  ),
                );
          }, child: Text("Palindrome of a num Screen", style: TextStyle(color: Colors.white),))),
        ],
      ),),
    );
  }
}