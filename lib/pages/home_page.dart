import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_catalog/Models/catalog.dart';
import 'package:flutter_catalog/pages/BMI_screen/bmi_screen.dart';
import 'package:flutter_catalog/pages/cart_page.dart';
import 'package:flutter_catalog/utils/myRoutes.dart';
import 'package:flutter_catalog/widgets/homepage_widgets/catalog_header.dart';
import 'package:flutter_catalog/widgets/homepage_widgets/catalog_list.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:flutter_catalog/widgets/transitions.dart';
import 'package:velocity_x/velocity_x.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("lib/assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];

    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
    ));
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    return Scaffold(
      body: SafeArea(
        bottom: true,
        child: Container(
          padding: Vx.mOnly(left: 28, right: 28, top: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
              ),
              CatalogHeader(),
              SizedBox(
                height: 18,
              ),
              if (CatalogModel.items != 1 && CatalogModel.items.isNotEmpty)
                CatalogList(
                  size: 20,
                ).expand()
              else
                Center(
                  child: CircularProgressIndicator(),
                )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: context.canvasColor,
        activeColor: context.theme.buttonColor,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.home,
              ),
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, myRoutes.bmiCalc);
                },
                child: Icon(
                  Icons.monitor_weight,
                  // color: _page == 1 ? primaryColor : secondaryColor,
                ),
              ),
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.pushNamed(context, myRoutes.commingSoon);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.playlist_add_check_circle_outlined,
                  // color: _page == 3 ? primaryColor : secondaryColor,
                ),
              ),
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}


// Page transitions effects







