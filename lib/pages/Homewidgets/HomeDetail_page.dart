// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_03/Widgets/MyTheme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_application_03/models/Catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: Vx.mH8,
        children: [
          "\$${catalog.price}".text.bold.xl4.make(),
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(MyThemes.DarkGreen),
                  shape: MaterialStateProperty.all(StadiumBorder())),
              child: "Buy".text.xl4.make())
        ],
      ).p24(),
      backgroundColor: context.canvasColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            //  Hero(
            // tag: catalog.id.toString(),
            Image.network(catalog.image1).h32(context),
            Expanded(
              child: VxArc(
                height: 30,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  width: context.screenWidth,
                  color: context.cardColor,
                  child: Column(
                    children: [
                      catalog.name.text.bold
                          .color(MyThemes.DarkGreen)
                          .xl4
                          .make(),
                      catalog.desc.text.xl.make(),
                      10.heightBox,
                      "rudra chaudhary this is one of the technology product you should use it wisely becasue technology is as usefal as anything but ___"
                          .text
                          .make()
                          .p16(),
                    ],
                  ).py64(),
                ),
              ),
            ),
            //)
          ],
        ),
      ),
    );
  }
}
