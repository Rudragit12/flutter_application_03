import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../Widgets/MyTheme.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog app".text.xl5.bold.color(context.theme.accentColor).make(),
        "Trending product".text.xl2.make(),
      ],
    );
  }
}
