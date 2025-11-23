import 'package:flutter/material.dart';
import 'package:flutter_assignment_2/common/my_snackbar.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () => {
                  showMySnackBar(context: context, message: "Container 1")
                },
                child: Container(
                  width: double.infinity,
                  color: Colors.amberAccent,
                  child: Text("container 1"),
                  alignment: Alignment.center,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: GestureDetector(
               onTap: () => {
                  showMySnackBar(context: context, message: "Container 2", color: Colors.red)
                },
                child: Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: Text("Container 2"),
                  alignment: Alignment.center,
                  ),
              ),
            ),
              
          ],
        )
      ),
    );
  }
}