import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  double p = 0;  
  double t = 0;  
  double r = 0;  
  double result = 0;  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest", 
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,)),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                p = double.parse(value);
              },
              decoration: InputDecoration(
                labelText: "Enter Principal",
                hintText: "e.g 100",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: (value) {
                t = double.parse(value);
              },
              decoration: InputDecoration(
                labelText: "Enter Time",
                hintText: "e.g 2",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: (value) {
                r = double.parse(value);
              },
              decoration: InputDecoration(
                labelText: "Enter Rate",
                hintText: "e.g 4.5",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  result = p*t*r / 100;
                });
              }, child: Text("Calculate")),
              ),
              SizedBox(height: 20,),
            Text("Result: $result"),
          ],
        ),
    )
    );
  }
}