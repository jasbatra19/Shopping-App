import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:shoppingapp/screens/wrapper.dart';

import 'package:shoppingapp/services/auth.dart';

import 'package:shoppingapp/services/user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<Myuser?>.value(
      initialData: null,
      value: AuthService().streamUser,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
