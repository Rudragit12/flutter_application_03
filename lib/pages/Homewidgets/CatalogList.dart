import 'package:flutter/material.dart';
import 'package:flutter_application_03/pages/Homewidgets/HomeDetail_page.dart';
import 'package:flutter_application_03/utils/MyRoutes.dart';
import '../../Widgets/MyTheme.dart';
import '../../models/Catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import 'CatalogImage.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.getByPosition(index);
          return InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          /*  this below line is use for the setting the go into particular one thing
                          HomeDetailPage(catalog: CatalogModel.getById(2) */
                          HomeDetailPage(catalog: catalog),
                    ),
                  ),
              child: CatalogItem(catalog: catalog));
        });
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      //   child: Hero(
      // tag: catalog.id.toString(),
      child: Row(
        children: [
          CatalogImage(image: catalog.image1),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.bold.color(MyThemes.DarkGreen).xl.make(),
              catalog.desc.text.make(),
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: Vx.mH8,
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(MyThemes.DarkGreen),
                          shape: MaterialStateProperty.all(StadiumBorder())),
                      child: "Buy".text.make())
                ],
              )
            ],
          ))
        ],
      ),
      // ),
    ).color(context.cardColor).square(150).rounded.make().py16();
  }
}
