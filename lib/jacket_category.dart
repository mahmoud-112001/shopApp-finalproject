import 'package:flutter/material.dart';
import 'jacket_datails.dart';
import 'shirts_details.dart';
import 'jacket_model.dart';
class jacket extends StatefulWidget {
  const jacket({Key? key}) : super(key: key);

  @override
  State<jacket> createState() => _jacketState();
}

class _jacketState extends State<jacket> {
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
          itemCount: jacket_list.length,
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
                        tag: "${jacket_list[index].id}",
                        child: Image.asset(
                          jacket_list[index].image!,
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
                                      builder: (context) =>jacket_details(
                                       jacketModel: jacket_list [index], )));
                            },
                            child: Column(
                              children: [
                                Text(
                                  jacket_list[index].name!,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  jacket_list[index].price.toString(),
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
