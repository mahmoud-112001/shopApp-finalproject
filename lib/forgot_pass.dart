import 'package:flutter/material.dart';
import 'package:shop_app_project/Login_page.dart';

class forget extends StatelessWidget {
  const forget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.brown,
        title: Text(
          "Billionaire",
          style: TextStyle(fontFamily: "LobsterTwo", fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 200,
              width: 200,
              child: Image.asset("Images/logo.png"),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Email",
                  hintText: " Enter your mail",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown)),
                  labelStyle: TextStyle(color: Colors.brown),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.brown,
                  )),
            ),
            SizedBox(height: 50,),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "new password",
                  hintText: " Enter your password",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown)),
                  labelStyle: TextStyle(color: Colors.brown),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.brown,
                  )),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.brown),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Register();
                  }));
                },
                child: Text("Resset")),
          ],
        ),
      ),
    );
  }
}
