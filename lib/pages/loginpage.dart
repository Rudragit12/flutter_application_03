import 'package:flutter/material.dart';

class Login_page extends StatelessWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("storageOfImage/images/login.png", fit: BoxFit.cover),
            SizedBox(
              height: 20,
            ),
            Text(
              "welcome",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Username", hintText: "enter user name"),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Password", hintText: "enter password"),
                  obscureText: true,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: Text("login"),
                  onPressed: () {},
                )
              ]),
            ),
          ],
        ));
  }
}
