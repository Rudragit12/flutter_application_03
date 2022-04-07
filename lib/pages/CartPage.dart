import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        title: "cart".text.green500.make(),
      ),
      body: Column(
        children: [_cartList().p32().expand(), Divider(), _cartTotal()],
      ),
    );
  }
}

class _cartTotal extends StatelessWidget {
  const _cartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$999".text.xl5.make(),
          30.widthBox,
          ElevatedButton(onPressed: (() {}), child: "buy".text.make())
        ],
      ),
    );
  }
}

class _cartList extends StatefulWidget {
  const _cartList({Key? key}) : super(key: key);

  @override
  State<_cartList> createState() => _cartListState();
}

class _cartListState extends State<_cartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
            onPressed: () {}, icon: Icon(Icons.remove_circle_outline)),
        title: "Item 1".text.make(),
      ),
    );
  }
}
