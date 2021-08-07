import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/wrapper.dart';
import 'package:shoppingapp/services/auth.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

final _key = GlobalKey<FormState>();
final AuthService _auth = AuthService();
String email = '';
String password = '';
String name = '';
String error = '';

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      appBar: AppBar(
        title: Text("Welcome user"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Form(
            key: _key,
            child: Column(
              children: [
                // SizedBox(
                //   child: TextFormField(
                //     // validator: (val) => val!.isEmpty ? "Enter Name" : null,
                //     decoration: InputDecoration(
                //         prefixIcon: Icon(
                //           Icons.person,
                //         ),
                //         labelText: "Enter Name"),
                //   ),
                // ),
                SizedBox(
                  child: TextFormField(
                    validator: (val) => val!.isEmpty ? "Enter email" : null,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: "Enter Email",
                    ),
                    onChanged: (val) {
                      setState(() => email = val);
                    },
                  ),
                ),
                SizedBox(
                  child: TextFormField(
                    validator: (val) =>
                        val!.length < 6 ? "Enter password 6+ char long" : null,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.password,
                        ),
                        labelText: "Enter Password"),
                    obscureText: true,
                    onChanged: (val) {
                      setState(() => password = val);
                    },
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
                        onPressed: () async {
                          if (_key.currentState!.validate()) {
                            dynamic result = await _auth.registerWithEmailPass(
                                email, password);
                            // if (result != null) {
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (context) => Wrapper()));
                            // }
                            if (result == null) {
                              final snackBar = SnackBar(
                                  content: Text('Please enter valid email'));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          }
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
