import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: RichText(
        text : const TextSpan(
          text: "Hello",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
          children: <TextSpan>[
            TextSpan(
              text: "bold",
              style: TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: "world",
            ),
          ],
        ),
      ),
    );
  }
}