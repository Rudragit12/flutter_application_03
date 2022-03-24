import 'package:flutter/material.dart';
import 'package:flutter_application_03/models/Catalog.dart';
import 'package:flutter_application_03/widgets/MyDrawer.dart';
import '../widgets/Item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog_app"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          // itemCount: CatalogModel.items.length,
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              //  item: CatalogModel.items[index],
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
