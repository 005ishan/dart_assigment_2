import 'package:flutter/material.dart';
import 'package:flutter_assignment_2/widgets/my_button.dart';
import 'package:flutter_assignment_2/widgets/my_text_form_field.dart';

class CustomLayoutScreen extends StatelessWidget {
  const CustomLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
        MyTextFormField(
          onChanged: (value){
          }, text: "Enter your name"),
          const SizedBox(
            height: 20,
          ),
        MyButton(onPressed: () {}, text: "Enter"),
        ]
      ),
    );
  }
}