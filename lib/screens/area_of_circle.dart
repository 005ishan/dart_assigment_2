import 'package:flutter/material.dart';

class AreaOfCircleScreen extends StatefulWidget {
  const AreaOfCircleScreen({super.key});

  @override
  State<AreaOfCircleScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AreaOfCircleScreen> {
  double radius = 0;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Area of Circle", 
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,)
          ),
          centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 28, 212, 0),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                radius = double.parse(value);
              },
              decoration: InputDecoration(
                labelText: "Enter radius",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green)
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed:(){
                setState(() {
                  result = 3.14 * radius * radius;
                });
              }, child: Text("Calculate")),
            ),
            SizedBox(height: 20,),
            Text("Result $result"),
            
          ],
        ),
      ),
      );
  }
}