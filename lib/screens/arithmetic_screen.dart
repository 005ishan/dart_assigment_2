import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  int first = 0 ;
  int second = 0 ;
  int result = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arithmetic Operation",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,)),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            //CSS Style 
            TextField(
              onChanged: (value) {
                first = int.parse(value);
              },
              decoration: InputDecoration(
                labelText: "Enter first no",
                hintText: "e.g 2",
                border: OutlineInputBorder(),
              ),
            ),
            //Invisible box
            SizedBox(height: 20,),
            TextField(
              onChanged: (value) {
                second = int.parse(value);
              },
              decoration: InputDecoration(
                labelText: "Enter first no",
                hintText: "e.g 4",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {
                setState(() {
                  result = first + second;
                });
              }, child: Text("SUM")),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {
                setState(() {
                  result = first - second;
                });
              }, child: Text("Subtraction")),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {
                setState(() {
                  result = first * second;
                });
              }, child: Text("Multiplication")),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {
                setState(() {
                  result = first ~/ second;
                });
              }, child: Text("Division")),
            ),
            SizedBox(height: 20,),
            Text("Result: $result"),
          ],
        ),
      ),
    );
  }
}