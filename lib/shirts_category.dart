import 'package:flutter/material.dart';
import 'shirts_details.dart';
import 'shirt_model.dart';
class shirt extends StatefulWidget {
  const shirt({Key? key}) : super(key: key);

  @override
  State<shirt> createState() => _shirtState();
}

class _shirtState extends State<shirt> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.brown,
        title: Text(
          "Billionaire",
          style: TextStyle(fontFamily: "LobsterTwo", fontSize: 25),
        ),
      ),
      backgroundColor: Color(0xFFFFEDDB),
      body: GridView.builder(
          itemCount: shirtlist.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 5,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Color(0xFFF6E7D8),
              elevation: 20,
              child: Stack(
                children: [
                  Positioned.fill(
                      child: Hero(
                        tag: "${shirtlist[index].id}",
                        child: Image.asset(
                          shirtlist[index].image!,
                        ),
                      )),
                  Positioned(
                      left: 10,
                      right: 10,
                      bottom: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(5)),
                        height: 60,
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Shirts_details(
                                        shirts_model: shirtlist[index], )));
                            },
                            child: Column(
                              children: [
                                Text(
                                  shirtlist[index].name!,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  shirtlist[index].price.toString(),
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            );
          }),
    );
  }
}
