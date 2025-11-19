import 'package:flutter/material.dart';
import 'package:flutter_assignment_2/app.dart';

class FlutterLayoutScreen extends StatefulWidget {
  const FlutterLayoutScreen({super.key});

  @override
  State<FlutterLayoutScreen> createState() => _FlutterLayoutScreenState();
}

class _FlutterLayoutScreenState extends State<FlutterLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: 150,
        height: 60,
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.call),
                Text("Call"),
              ],
            ),
            Column(
              children: [
                Icon(Icons.share),
                Text("Share"),
              ],
            ),
            Column(
              children: [
                Icon(Icons.route),
                Text("Route"),
            ],
            ),
            ],
        ),
      ),
    );
  }
}