import "package:flutter/material.dart";

void main() {
  runApp(Header());
}

// ignore: use_key_in_widget_constructors
class Header extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  HeaderState createState() => HeaderState();
}

class HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: size.height / 5,
                    decoration: const BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(42),
                      ),
                      boxShadow: [
                        BoxShadow(blurRadius: 2),
                      ],
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.white70,
                              radius: 35,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("images/ShafinVaia.jpg"),
                                radius: 30,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Column(
                              children: [
                                const Text(
                                  "Foddiee_Shafin",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black54,
                                  ),
                                  child: const Text(
                                    "Gold Member",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Text("Balance\n1000৳ BDT",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                ],
              ),
              Positioned(
                bottom: 0,
                // ignore: sized_box_for_whitespace
                child: Container(
                  width: size.width,
                  height: 50,
                  child: Card(
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: TextFormField(decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: "what does your belly want?",
                      suffixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.only(left: 20),
                    ),),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
