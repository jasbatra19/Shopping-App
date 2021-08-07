import 'package:flutter/material.dart';
import 'package:shoppingapp/addtocart/addToCartEyewear.dart';
import 'package:shoppingapp/login/register.dart';
import 'package:shoppingapp/screens/home.dart';

import 'package:shoppingapp/services/auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

final _key = GlobalKey<FormState>();
String email = '';
String password = '';
String error = '';
final snackBar = SnackBar;

class _LoginState extends State<Login> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade200,
        appBar: AppBar(
          title: Text("ShopperCart"),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              child: Form(
                key: _key,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 70, left: 20, right: 20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.pink.shade50,
                          borderRadius: BorderRadius.circular(20)),
                      child: TextFormField(
                        validator: (val) => val!.isEmpty ? "Enter email" : null,
                        onChanged: (val) {
                          setState(() => email = val);
                        },
                        decoration: InputDecoration(
                            labelText: "Enter email",
                            icon: Icon(
                              Icons.email,
                              color: Colors.teal.shade900,
                            )),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.pink.shade50,
                          borderRadius: BorderRadius.circular(20)),
                      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        validator: (val) => val!.length < 6
                            ? "Enter password 6+ char long"
                            : null,
                        onChanged: (val) {
                          setState(() => password = val);
                        },
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            labelText: "Enter password",
                            icon: Icon(
                              Icons.password,
                              color: Colors.teal.shade900,
                            )),
                        obscureText: true,
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 200,
                        margin: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.red.shade100),
                        child: TextButton(
                          onPressed: () async {
                            if (_key.currentState!.validate()) {
                              dynamic result = await _auth.signInWithEmailPass(
                                  email, password);
                              if (result == null) {
                                final snackBar = SnackBar(
                                    content: Text('Please enter valid email'));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              }
                            }
                          },
                          child: Text(
                            " Login ",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 200,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.red.shade100),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()));
                          },
                          child: Text(
                            "Register",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
