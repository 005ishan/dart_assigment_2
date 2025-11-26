import 'package:flutter/material.dart' hide RichText;
import 'package:flutter_assignment_2/screens/area_of_circle.dart';
import 'package:flutter_assignment_2/screens/arithmetic_screen.dart';
import 'package:flutter_assignment_2/screens/container_screen.dart';
import 'package:flutter_assignment_2/screens/custom_layout_screen.dart';
import 'package:flutter_assignment_2/screens/flexible_expanded_screen.dart';
import 'package:flutter_assignment_2/screens/flutter_layout_screen.dart';
import 'package:flutter_assignment_2/screens/palindrome.dart';
import 'package:flutter_assignment_2/screens/simple_Interest_screen.dart';
import 'package:flutter_assignment_2/screens/rich_text_screen.dart';

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
          SizedBox(height: 20,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 234, 242, 6),
              ),onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const RichTextScreen(),
                  ),
                );
          }, child: Text("Rich Text Screen", style: TextStyle(color: Colors.white),))),
          SizedBox(height: 20,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 32, 0, 212),
              ),onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const FlutterLayoutScreen(),
                  ),
                );
          }, child: Text("Flutter Layout Screen", style: TextStyle(color: Colors.white),))),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 32, 0, 212),
              ),onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const ContainerScreen(),
                  ),
                );
          }, child: Text("container Screen", style: TextStyle(color: Colors.white),))),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 32, 0, 212),
              ),onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const FlexibleExpandedScreen(),
                  ),
                );
          }, child: Text("flexible expanded Screen", style: TextStyle(color: Colors.white),))),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 32, 0, 212),
              ),onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const CustomLayoutScreen(),
                  ),
                );
          }, child: Text("Custom Layout Screen", style: TextStyle(color: Colors.white),))),
        ],
      ),),
    );
  }
}