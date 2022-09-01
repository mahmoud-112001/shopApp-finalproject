import 'package:flutter/material.dart';
import 'package:shop_app_project/shoes_category.dart';
import 'shirts_category.dart';
import 'jacket_category.dart';
import 'product_model.dart';
import 'Details_page.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
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
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.brown,
                      fontFamily: "LobsterTwo"),
                ),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return shirt();
                        }));
                      },
                      child: Text(
                        "Shirts",
                        style: TextStyle(fontSize: 20, color: Colors.brown),
                      ))),
              Divider(
                color: Colors.brown,
                height: 10,
                thickness: 4,
                indent: 10,
                endIndent: 5,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return jacket();
                        }));
                      },
                      child: Text(
                        "Jackets",
                        style: TextStyle(fontSize: 20, color: Colors.brown),
                      ))),
              Divider(
                color: Colors.brown,
                height: 10,
                thickness: 4,
                indent: 10,
                endIndent: 5,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return shoes();
                        }));
                      },
                      child: Text(
                        "Shoes",
                        style: TextStyle(fontSize: 20, color: Colors.brown),
                      ))),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFFFFEDDB),
      body: GridView.builder(
          itemCount: Productlist.length,
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
                    tag: "${Productlist[index].id}",
                    child: Image.asset(
                      Productlist[index].image!,
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
                                      builder: (context) => Details(
                                          productModel: Productlist[index])));
                            },
                            child: Column(
                              children: [
                                Text(
                                  Productlist[index].name!,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  Productlist[index].price.toString(),
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
