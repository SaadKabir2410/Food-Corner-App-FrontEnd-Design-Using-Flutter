import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class BurgerPage extends StatefulWidget {
  static const tag = "burger_page";
  @override
  // ignore: library_private_types_in_public_api
  _BurgerPageState createState() => _BurgerPageState();
}

class _BurgerPageState extends State<BurgerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
