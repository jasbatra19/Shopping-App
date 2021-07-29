import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Colors.teal.shade50,
            image: DecorationImage(
                image: AssetImage("images/bg.jpeg"), fit: BoxFit.fill)),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 100,
              width: 200,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  border: Border.all(color: Colors.teal),
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Center(
                child: Text(
                  "🛒SHOPPERCART",
                  style: TextStyle(
                      fontSize: 30,
                      // fontFamily: "Satisfy",
                      fontStyle: FontStyle.normal),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 70, left: 20, right: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.pink.shade50,
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
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
              child: TextField(
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
                margin: EdgeInsets.all(70),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.red.shade100),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
