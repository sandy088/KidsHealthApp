import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';

class BMIResultScreen extends StatelessWidget {
  final bool isMale;
  final double result;
  final int age;

  BMIResultScreen(
      {required this.result, required this.age, required this.isMale});

  @override
  Widget build(BuildContext context) {
    int rs = result.round();
    return Scaffold(
      appBar: AppBar(
        /*Manual Way to create back arrow*/
        // leading: IconButton(
        //   onPressed: (){
        //     Navigator.pop(context);
        //   },
        //   icon: Icon(
        //     Icons.arrow_back_ios,
        //   ),
        // ),
        title: const Text(
          "BMI RESULT",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gender: ${isMale ? 'Male' : 'Female'}",
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Result: ${result.round()}",
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Age: $age",
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
