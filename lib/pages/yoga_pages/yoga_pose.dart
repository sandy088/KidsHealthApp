import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_catalog/Models/catalog.dart';
import 'package:flutter_catalog/pages/cart_page.dart';
import 'package:flutter_catalog/widgets/homepage_widgets/catalog_header.dart';
import 'package:flutter_catalog/widgets/homepage_widgets/catalog_list.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:flutter_catalog/widgets/transitions.dart';
import 'package:velocity_x/velocity_x.dart';

class Yoga extends StatefulWidget {
  const Yoga({Key? key}) : super(key: key);

  @override
  State<Yoga> createState() => _Yoga();
}

class _Yoga extends State<Yoga> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("lib/assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData["yoga"];

    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //     systemNavigationBarColor: Colors.transparent));
    //     SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    //Dummy List
    // final dummyList= List.generate(20,(index) => CatalogModel.items[0]);

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
                  headertxt: "Yoga 🧘‍♂️",
                  subHeadertxt: "Yoga is the best way to get fit",
                ),
                if (CatalogModel.items != 1 && CatalogModel.items.isNotEmpty)
                  CatalogList().expand()
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


// Page transitions effects







