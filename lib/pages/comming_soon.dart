import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/homepage_widgets/catalog_header.dart';

class CommingSoon extends StatelessWidget {
  const CommingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0),
        child: Center(
          child: Text(
            "Comming Soon🔜",
            style: TextStyle(fontSize: 48),
          ),
        ),
      ),
    );
  }
}
