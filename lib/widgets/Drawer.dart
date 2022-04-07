import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final image_url =
        "https://avatars.githubusercontent.com/u/12619420?s=460&u=26db98cbde1dd34c7c67b85c240505a436b2c36d&v=4";
    return Drawer(
      backgroundColor: Colors.green,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Shiv"),
            accountEmail: Text("ShivayWorld@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(image_url),
            ),
          ),
          //home
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "home",
              style: TextStyle(color: Colors.white),
              textScaleFactor: 1.5,
            ),
          ),
          //mail me
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text(
              "Mail",
              style: TextStyle(color: Colors.white),
              textScaleFactor: 1.5,
            ),
          ),
          //phone
          ListTile(
            leading: Icon(
              CupertinoIcons.phone,
              color: Colors.white,
            ),
            title: Text(
              "Phone",
              style: TextStyle(color: Colors.white),
              textScaleFactor: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
