import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int day = 30;
  final String name = "arka";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Catalog APP")),
      ),
      body: Center(
        child: Container(
          child: Text("wellcome $name it's your $day th day"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
