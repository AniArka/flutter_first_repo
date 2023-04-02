import 'package:flutter/material.dart';
import 'package:test_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool change_button = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/loin_im_2.png",
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Wellcome $name',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "password",
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        change_button = true;
                      });

                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 50,
                      width: change_button ? 50 : 150,
                      //color: Color.fromARGB(255, 115, 81, 239),
                      child: Center(
                        child: change_button
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 115, 81, 239),
                          //shape: change_button
                          //  ? BoxShape.circle
                          // : BoxShape.rectangle
                          borderRadius: change_button
                              ? BorderRadius.circular(30)
                              : BorderRadius.circular(8)),
                    ),
                  )
                  //ElevatedButton(
                  //onPressed: () {
                  //Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //},
                  //child: Text("Login"),
                  //)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
