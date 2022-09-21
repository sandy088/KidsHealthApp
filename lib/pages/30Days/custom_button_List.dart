import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class buttonList extends StatelessWidget {
  final int days;
  const buttonList({Key? key, this.days = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 30,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(context.theme.buttonColor),
                      shape: MaterialStateProperty.all(
                        StadiumBorder(),
                      ),
                    ),
                    child: "Day ${index + 1}".text.xl3.make())
                .wh(350, 80),
          );
        });
  }
}
