import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_03/models/Catalog.dart';
import 'package:flutter_application_03/widgets/MyDrawer.dart';
import '../widgets/Item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("storageOfImage/files/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
//    List<Item> list = List.from(productsData)
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //final dummyList = List.generate(50, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog_app"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
              ? ListView.builder(
                  itemCount: CatalogModel.items.length,
                  //itemCount: dummyList.length,
                  itemBuilder: (context, index) {
                    return ItemWidget(
                      item: CatalogModel.items[index],
                      // item: dummyList[index],
                    );
                  },
                )
              : Center(
                  child: CircularProgressIndicator(),
                )),
      drawer: MyDrawer(),
    );
  }
}
