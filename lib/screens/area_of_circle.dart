import 'package:flutter/material.dart';

class AreaOfCircleScreen extends StatefulWidget {
  const AreaOfCircleScreen({super.key});

  @override
  State<AreaOfCircleScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AreaOfCircleScreen> {
  TextEditingController radiusController = TextEditingController();
  double result = 0;

  // Global key for form state
  final _formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    radiusController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Area of Circle",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 28, 212, 0),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                controller: radiusController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter radius';
                  }
                  final parsed = double.tryParse(value);
                  if (parsed == null) {
                    return 'Enter a valid number';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Enter radius",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      setState(() {
                        final radius = double.parse(radiusController.text);
                        result = (3.14 * radius * radius).ceilToDouble();
                      });
                    }
                  },
                  child: Text("Calculate"),
                ),
              ),
              SizedBox(height: 20),
              Text("Result $result"),
            ],
          ),
        ),
      ),
    );
  }
}
