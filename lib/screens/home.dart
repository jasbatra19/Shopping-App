import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shoppingapp/Feedbackpage/feedback.dart';
import 'package:shoppingapp/addtocart/addToCartEyewear.dart';
import 'package:shoppingapp/addtocart/addToCartPurse.dart';
import 'package:shoppingapp/addtocart/addToCartshoes.dart';
import 'package:shoppingapp/login/login.dart';
import 'package:shoppingapp/screens/clothes.dart';
import 'package:shoppingapp/screens/eyewear.dart';
import 'package:shoppingapp/screens/footwear.dart';
import 'package:shoppingapp/screens/handbags.dart';
import 'package:shoppingapp/data/product.dart';

import '../addtocart/addToCartClothes.dart';
import 'cart.dart';

int i = 0;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade100,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade500,
        title: Text("ShopperCart"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              icon: Icon(Icons.shopping_bag_rounded),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        elevation: 100,
        child: ListView(
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(40),
              tileColor: Colors.teal.shade300,
              title: Text(
                "Categories",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: ListTile(
                horizontalTitleGap: 10,
                contentPadding: EdgeInsets.all(20),
                tileColor: Colors.teal.shade100,
                leading: Icon(Ionicons.bag),
                title: Text("Handbags"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Handbags()));
                },
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: ListTile(
                horizontalTitleGap: 10,
                contentPadding: EdgeInsets.all(20),
                tileColor: Colors.teal.shade100,
                leading: Icon(Ionicons.shirt),
                title: Text("Clothes"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Clothes()));
                },
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: ListTile(
                horizontalTitleGap: 10,
                contentPadding: EdgeInsets.all(20),
                tileColor: Colors.teal.shade100,
                leading: Icon(Ionicons.eye),
                title: Text("Eye Wear"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Eyewear()));
                },
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: ListTile(
                horizontalTitleGap: 10,
                contentPadding: EdgeInsets.all(20),
                tileColor: Colors.teal.shade100,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Footwear()));
                },
                leading: Icon(Ionicons.footsteps),
                title: Text("Footwear"),
              ),
            ),
            Container(
              child: Align(
                alignment: FractionalOffset.topCenter,
                child: Column(
                  children: [
                    ListTile(
                      horizontalTitleGap: 10,
                      contentPadding: EdgeInsets.all(20),
                      tileColor: Colors.teal.shade100,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => feedback()));
                      },
                      leading: Icon(Ionicons.thumbs_up),
                      title: Text("FeedBack"),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(20),
                      tileColor: Colors.tealAccent.shade700,
                      leading: Icon(Icons.logout),
                      title: Text(
                        "Log out",
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: GridView.count(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: List.generate(
          product.length,
          (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  i = product[index].id;
                  if (product[index].type == "C") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => addToCartClothes()));
                  }
                  if (product[index].type == "P") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => addToCartPurse()));
                  }
                  if (product[index].type == "E") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => addToCartEye()));
                  }
                  if (product[index].type == "S") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddToCartShoes()));
                  }
                });
              },
              child: Card(
                color: Colors.cyan.shade50,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(product[index].image),
                    ),
                    Text(
                      "${product[index].title}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.black,
                    ),
                    Text(
                      "Rs. ${product[index].cost}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
