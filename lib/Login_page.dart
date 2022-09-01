import 'package:flutter/material.dart';
import 'Home_page.dart';
import 'Signup_page.dart';
import 'forgot_pass.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
            child: Column(
              children: [
                Center(
                  child: Container(
                      margin: EdgeInsets.only(top: 30),
                      height: 200,
                      width: 200,
                      child: Image.asset(
                        "Images/logo.png",
                      )),
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
                  validator: (String? value) {
                    if (value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`@{|}~]+[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return 'Enter a valid email!';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: " Enter your password",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown)),
                      labelStyle: TextStyle(color: Colors.brown),
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.brown,
                      )),
                  validator: (dynamic value) {
                    if (value!.length < 7) {
                      return "You must enter you password";
                    }
                    return null;
                  },
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.brown),
                      onPressed: () {
                        if (form.currentState!.validate()) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return home_page();
                          }));
                        }
                      },
                      child: Text("Enter")),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "if you dont have an account",
                      style: TextStyle(fontSize: 19, fontFamily: "LobsterTwo"),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return sign_up();
                          }));
                        },
                        child: Text("Sign up")),
                  ],
                ),
                Divider(
                  color: Colors.brown,
                  height: 10,
                  thickness: 4,
                  indent: 10,
                  endIndent: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot the password",
                      style: TextStyle(fontSize: 19, fontFamily: "LobsterTwo"),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return forget();
                          }));
                        }, child: Text("Reassign password")),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),

      // drawer: Drawer(),
    );
  }
}
