import 'package:flutter/material.dart';
import 'shoes_details.dart';
import 'shoes_model.dart';
class shoes extends StatefulWidget {
  const shoes({Key? key}) : super(key: key);

  @override
  State<shoes> createState() => _shoesState();
}

class _shoesState extends State<shoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          itemCount: Shoeslist.length,
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
                        tag: "${Shoeslist[index].id}",
                        child: Image.asset(
                          Shoeslist[index].image!,
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
                                      builder: (context) => shoesDetails(
                                        shoesModel: Shoeslist[index], )));
                            },
                            child: Column(
                              children: [
                                Text(
                                  Shoeslist[index].name!,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  Shoeslist[index].price.toString(),
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

