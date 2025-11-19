import 'package:flutter/material.dart';

class PalindromeScreen extends StatefulWidget {
  const PalindromeScreen({super.key});

  @override
  State<PalindromeScreen> createState() => _PalindromeScreenState();
}

class _PalindromeScreenState extends State<PalindromeScreen> {
  int num = 0;
  String result = "";

  bool isPalindrome(int n) {
    int original = n;
    int rev = 0;

    while (n > 0) {
      rev = rev * 10 + n % 10;
      n ~/= 10;
    }
    return original == rev;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Palindrome Or Not", 
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 119, 34, 255),
      ),
      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
              onChanged: (value) {
                num = int.parse(value);
              },
              decoration: InputDecoration(
                labelText: "Enter num",
                hintText: "e.g 1001",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  if (isPalindrome(num)) {
                    result = "$num is a Palindrome";
                  } else {
                    result = "$num is NOT a Palindrome";
                  }});
              }, child: Text("Calculate")),
              ),
              SizedBox(height: 20),
            Text(
              result,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),),
    );
  }
}