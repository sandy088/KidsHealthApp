import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/recipee.dart';
import 'package:flutter_catalog/pages/home_detail_page.dart';
import 'package:flutter_catalog/widgets/recipee%20widgets/recipee_card.dart';
import 'package:flutter_catalog/widgets/recipee%20widgets/recipee_image.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_catalog/widgets/themes.dart';

import '../../Models/catalog.dart';

class RecipeeList extends StatelessWidget {
  const RecipeeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: RecipeeModel.items.length,
        itemBuilder: (context, index) {
          final catalog = RecipeeModel.items[index];
          // ignore: missing_required_param
          return InkWell(
              // onTap: () => Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => HomeDetailPage(
              //           catalog: catalog,
              //         ),
              //       ),
              //     ),
              child: RecipeeItem(catalog: catalog));
        });
  }
}

class RecipeeItem extends StatelessWidget {
  final Item2 catalog;

  const RecipeeItem({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RecipeCard(title: catalog.name, thumbnailUrl: catalog.image);
  }
}
