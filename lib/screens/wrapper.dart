import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppingapp/login/login.dart';
import 'package:shoppingapp/login/register.dart';
import 'package:shoppingapp/services/user.dart';

import 'home.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Myuser?>(context);
    print(user);
    if (user != null) {
      return Home();
    } else
      return Login();
  }
}
