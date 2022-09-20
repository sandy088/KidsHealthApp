import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/models/recipee.dart';
import 'package:flutter_catalog/pages/cart_page.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/widgets/homepage_widgets/catalog_list.dart';
import 'package:flutter_catalog/widgets/recipee%20widgets/recipee_list.dart';
import 'package:flutter_catalog/widgets/transitions.dart';
import 'package:velocity_x/velocity_x.dart';

class HealthyDietPage extends StatefulWidget {
  const HealthyDietPage({Key? key}) : super(key: key);

  @override
  State<HealthyDietPage> createState() => _HealthyDietPageState();
}

class _HealthyDietPageState extends State<HealthyDietPage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("lib/assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData["healthyDiet"] as List;

    RecipeeModel.items = List.from(productData)
        .map<Item2>((item) => Item2.fromMap(item))
        .cast<Item2>()
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.canvasColor,
        body: SafeArea(
          bottom: true,
          child: Container(
            padding: Vx.mOnly(left: 28, right: 28, top: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Healthy Diet 🥝"
                    .text
                    .xl5
                    .bold
                    .color(context.theme.buttonColor)
                    .make(),
                "Healthy Diet for kids".text.xl2.make(),
                SizedBox(
                  height: 12,
                ),
                if (RecipeeModel.items != 0 && RecipeeModel.items.isNotEmpty)
                  RecipeeList().expand()
                else
                  Center(
                    child: CircularProgressIndicator(),
                  )
              ],
            ),
          ),
        ));
  }
}
