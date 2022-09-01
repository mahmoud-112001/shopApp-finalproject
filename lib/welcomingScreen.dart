import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Login_page.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Images/Background.jpg"), fit: BoxFit.cover)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                child: Text(
                  "Lets Explore our Fancy world",
                  style: TextStyle(
                      color: Colors.brown, fontSize: 33, fontFamily: "LobsterTwo"),
                )),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 100),
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.transparent),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Register();
                    }));
                  },
                  child: Text(
                    "Start",
                    style: TextStyle(fontSize: 25, fontFamily: "LobsterTwo"),
                  ),
                ),
              ),
            ),
          ]
      ),
    ));
  }
}
