import 'package:flutter/material.dart';
import 'burger_page.dart';

// ignore: use_key_in_widget_constructors
class HambergerList extends StatefulWidget {
  final int row;
  HambergerList({required this.row});

  @override
  // ignore: library_private_types_in_public_api
  _HambergerListState createState() => _HambergerListState();
}

class _HambergerListState extends State<HambergerList> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    int Items = 10;

    Widget baconImage = Container(
      height: 140,
      child: Image.asset("images/Bacon_Burger.png"),
    );

    Widget chickenImage = Container(
      height: 100,
      child: Image.asset("images/chicken_Burger.png"),
    );

    return SliverToBoxAdapter(
      // ignore: sized_box_for_whitespace
      child: Container(
        margin: const EdgeInsets.only(top: 14),
        height: widget.row == 2 ? 280 : 190,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Items,
          itemBuilder: (BuildContext context, index) {
            bool reverse = widget.row == 2 ? index.isEven : index.isOdd;
            return Stack(
              children: [
                // ignore: sized_box_for_whitespace
                Container(
                  height: 190,
                  width: 160,
                  margin: EdgeInsets.only(
                    left: 15,
                    right: index == Items ? 15 : 0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(BurgerPage.tag);
                    },
                    child: Card(
                      color: Colors.teal,
                      elevation: 3,
                      margin: const EdgeInsets.all(10),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45),
                        ),
                      ),

                      // self changes is here
                      child: Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Column(
                          children: [
                            Text(reverse ? "Chicken Berger" : "Bacon Burger",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                            const Spacer(),
                            Row(
                              children: [
                                const Spacer(),
                                const Spacer(),
                                const Text(
                                  "190৳ BDT",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Spacer(),
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      size: 28.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: reverse ? 50 : 20,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(BurgerPage.tag);
                    },
                    child: reverse ? chickenImage : baconImage,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
