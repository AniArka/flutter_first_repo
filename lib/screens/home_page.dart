import 'package:flutter/material.dart';
import 'package:test_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int day = 30;
  final String name = "arka";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 119, 7, 144),
        title: Center(child: Text("Catalog APP")),
      ),
      body: Center(
        child: Container(
          child: Text("wellcome $name it's your $day th day",
              style: TextStyle(color: Colors.green, fontSize: 20)),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
