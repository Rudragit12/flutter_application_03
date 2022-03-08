import 'package:flutter/material.dart';
import 'package:flutter_application_03/utils/MyRoutes.dart';

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  String name = " ";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("storageOfImage/images/login.png", fit: BoxFit.cover),
            SizedBox(
              height: 20,
            ),
            Text(
              "welcome $name",
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
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Password", hintText: "enter password"),
                  obscureText: true,
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(
                      Duration(seconds: 1),
                    );
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 50,
                    width: changeButton ? 50 : 150,
                    // color: Colors.lightGreen,
                    alignment: Alignment.center,
                    child: changeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.black,
                          )
                        : Text(
                            "login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                    decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8)),
                  ),
                ),

                /*  ElevatedButton(
                  child: Text("login"),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                )
 */
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
