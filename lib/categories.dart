import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Categories extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int currentSelectedItem = 0;
  @override
  Widget build(BuildContext context) {
    int items = 10;
    return SliverToBoxAdapter(
        child: Container(
      height: 100,
      margin: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items,
        itemBuilder: (context, index) => Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 90,
                  width: 90,
                  margin: EdgeInsets.only(left: index == 0 ? 15 : 0, right: 15),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentSelectedItem = index;
                      });
                    },
                    child: Card(
                      color: index == currentSelectedItem
                          ? Colors.teal
                          : Colors.white,
                      elevation: 4,
                      margin: const EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Icon(Icons.fastfood,
                          color: index == currentSelectedItem
                              ? Colors.white
                              : Colors.black.withOpacity(0.7)),
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 0,
              child: Container(
                margin: EdgeInsets.only(left: index == 0 ? 15 : 0, right: 15),
                width: 90,
                child: const Row(
                  children: [
                    Spacer(),
                    Text("Burger"),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
