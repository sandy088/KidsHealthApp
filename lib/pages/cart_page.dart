import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class cartPage extends StatelessWidget {
  const cartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      //color set to transperent or set your own color
      statusBarIconBrightness: Brightness.dark,
      //set brightness for icons, like dark background light icons
    ));

    return Scaffold(
      backgroundColor: context.theme.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: "Cart".text.color(context.theme.accentColor).bold.make(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            "\$999".text.xl5.color(context.theme.accentColor).make(),
            30.widthBox,
            ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: "Buying not Supported Yet".text.make()));
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            context.theme.buttonColor)),
                    child: "Buy".text.make())
                .w32(context)
          ],
        ));
  }
}

class _CartList extends StatefulWidget {
  const _CartList({Key? key}) : super(key: key);

  @override
  State<_CartList> createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(Icons.remove_circle_outline),
        ),
        title: "Item 1".text.make(),
      ),
    );
  }
}
