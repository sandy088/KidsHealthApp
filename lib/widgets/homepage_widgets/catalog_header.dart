import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_catalog/widgets/themes.dart';

class CatalogHeader extends StatelessWidget {
  final String headertxt;
  final String subHeadertxt;
  const CatalogHeader({
    Key? key,
    this.headertxt = "Kids Tasks",
    this.subHeadertxt = "Let's Perform Some Tasks",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        headertxt.text.xl5.bold.color(context.theme.buttonColor).make(),
        subHeadertxt.text.xl2.make(),
        SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
