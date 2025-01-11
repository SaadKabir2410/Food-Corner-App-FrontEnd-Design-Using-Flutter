import 'package:flutter/material.dart';
import "header.dart";
import "categories.dart";
import 'hamberger_list.dart';
import 'burger_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: use_super_parameters
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          
          color: Colors.teal,
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.orange,
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        bottomAppBarTheme: const BottomAppBarTheme(color: Colors.teal),
      ),
      home: _Hamberger(),
      routes: {BurgerPage.tag: (_) => BurgerPage()},
      debugShowCheckedModeBanner: false,
    );
  }
}

class _Hamberger extends StatefulWidget {
  @override
  _HambergerState createState() => _HambergerState();
}

class _HambergerState extends State<_Hamberger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              pinned: true,
              title: const Text("Food Corner"),
              leading: IconButton(
                  icon: const Icon(Icons.menu),
                  color: Colors.white,
                  onPressed: () {}),
              actions: [
                IconButton(
                    icon: const Icon(Icons.shopping_cart),
                    color: Colors.white,
                    onPressed: () {})
              ]),
          Header(),
          Categories(),
          HambergerList(row: 1,),
          HambergerList(row: 2,),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        child: const Icon(
          Icons.home,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(42),
        ),
        child: Container(
          color: Colors.black45,
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: Row(
              children: [
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.add_alert),
                  color: Colors.white,
                  onPressed: () {},
                ),
                const Spacer(),
                const Spacer(),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.turned_in),
                  color: Colors.white,
                  onPressed: () {},
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
