import 'package:flutter/material.dart';
import 'Login_page.dart';

class sign_up extends StatefulWidget {
  const sign_up({Key? key}) : super(key: key);

  @override
  State<sign_up> createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  TextEditingController _password = TextEditingController();
  TextEditingController _confirming = TextEditingController();
  GlobalKey<FormState> form = GlobalKey();

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
      body: Form(
        key: form,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              children: [
                Center(
                  child: Container(
                      margin: EdgeInsets.only(top: 30,bottom: 30),
                      height: 150,
                      width: 150,
                      child: Image(image: AssetImage("Images/logo.png"))),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "UserName",
                      helperText: "8 characters only / without: # , ^ ,*",
                      hintText: " Enter your UserName",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown)),
                      labelStyle: TextStyle(color: Colors.brown),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.brown,
                      )),

                  validator: (String? value) {
                    if (value!.length < 6) {
                      return "You must enter you username";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Email",
                      hintText: " Enter your mail",
                      helperText: "8 characters only / without: # , ^ ,*",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown)),
                      labelStyle: TextStyle(color: Colors.brown),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.brown,
                      )),
                  validator: (String?value) {
                    if (value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return 'Enter a valid email!';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _password,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: " Enter your Password",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown)),
                      labelStyle: TextStyle(color: Colors.brown),
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.brown,
                      )),
                  validator: (dynamic value) {
                    if (value!.length ==null) {
                      return "You must enter you password";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _confirming,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Confirm your password",
                      hintText: " Enter your Password",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown)),
                      labelStyle: TextStyle(color: Colors.brown),
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.brown,
                      )),
                  validator: (dynamic value ) {
                    if (value!.length ==null) {
                      return "You must enter you password";
                    } if(value!=_password){
                      return "No match";
                    }
                  },
                ),
                SizedBox(
                  height: 27,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.brown),
                    onPressed: () {
                     if(form.currentState!.validate()){
                       Navigator.push(context, MaterialPageRoute(builder: (context){
                         return Register();
                       }));
                     }
                    },
                    child: Text("Enter"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
