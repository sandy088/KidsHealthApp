import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/30Days/custom_button_List.dart';
import 'package:flutter_catalog/widgets/homepage_widgets/catalog_header.dart';
import 'package:velocity_x/velocity_x.dart';

class fitChallenge extends StatelessWidget {
  const fitChallenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int days = 30;
    return Scaffold(
        backgroundColor: context.canvasColor,
        body: SafeArea(
          bottom: true,
          child: Container(
            padding: Vx.mOnly(left: 28, right: 28, top: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(
                  headertxt: "30 days Fit🤸",
                  subHeadertxt: "30 days Obese to Fitness Challenge",
                ),
                buttonList().expand(),
              ],
            ),
          ),
        ));
  }
}
