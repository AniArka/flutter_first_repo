import 'package:flutter/material.dart';
import 'package:test_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool change_button = false;
  final _formKey = GlobalKey<FormState>();

  movetoHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        change_button = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        change_button = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      validator: (String? value) {
                        if (value != null && value.isEmpty) {
                          return "Username can't be empty";
                        }

                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "password",
                      ),
                      validator: (String? value) {
                        if (value != null && value.isEmpty) {
                          return "password can't be empty";
                        } else if (value != null && value.length < 6) {
                          return "password must have atlest 6 charter ";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Material(
                      color: Color.fromARGB(255, 115, 81, 239),
                      borderRadius:
                          BorderRadius.circular(change_button ? 30 : 8),
                      child: InkWell(
                        //splashColor: Colors.red,
                        onTap: () => movetoHome(context),
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
                          //decoration: BoxDecoration(
                          //color: Color.fromARGB(255, 115, 81, 239),
                          //shape: change_button
                          //? BoxShape.circle             //////// inspite of border radius we can also use this
                          // : BoxShape.rectangle
                          //borderRadius: change_button
                          //  ? BorderRadius.circular(30)
                          //: BorderRadius.circular(8)),
                        ),
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
      ),
    );
  }
}
