import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/cart.dart';
import 'package:shoppingapp/data/product.dart';
import 'package:shoppingapp/screens/home.dart';

// import '../screens/home.dart';

enum ClothSize { S, M, L, XL, XXL }
ClothSize? _size = ClothSize.S;

// ignore: camel_case_types
class addToCartClothes extends StatefulWidget {
  addToCartClothes({Key? key}) : super(key: key);

  @override
  _addToCartClothesState createState() => _addToCartClothesState();
}

// ignore: camel_case_types
class _addToCartClothesState extends State<addToCartClothes> {
  // final int index = product.length;
  Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ShopperCart"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Cart()));
              },
              icon: Icon(Icons.shopping_bag))
        ],
        backgroundColor: Colors.teal.shade600,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Card(
                child: Image.asset(product[i].image),
              ),
              Container(
                color: Colors.cyan.shade400,
                width: screenSize(context).width,
                child: Center(
                  child: Text(
                    "${product[i].title}",
                    style: TextStyle(fontFamily: "satisfy", fontSize: 30),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Rs.${product[i].cost}",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " S",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: "satisfy",
                                fontWeight: FontWeight.bold),
                          ),
                          Radio(
                              value: ClothSize.S,
                              groupValue: _size,
                              onChanged: (ClothSize? value) {
                                setState(() {
                                  _size = value;
                                });
                              }),
                          Text(
                            "M",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: "satisfy",
                                fontWeight: FontWeight.bold),
                          ),
                          Radio(
                              value: ClothSize.M,
                              groupValue: _size,
                              onChanged: (ClothSize? value) {
                                setState(() {
                                  _size = value;
                                });
                              }),
                          Text(
                            "L",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: "satisfy",
                                fontWeight: FontWeight.bold),
                          ),
                          Radio(
                              value: ClothSize.L,
                              groupValue: _size,
                              onChanged: (ClothSize? value) {
                                setState(() {
                                  _size = value;
                                });
                              }),
                          Text(
                            "XL",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: "satisfy",
                                fontWeight: FontWeight.bold),
                          ),
                          Radio(
                              value: ClothSize.XL,
                              groupValue: _size,
                              onChanged: (ClothSize? value) {
                                setState(() {
                                  _size = value;
                                });
                              }),
                          Text(
                            "XXL",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: "satisfy",
                                fontWeight: FontWeight.bold),
                          ),
                          Radio(
                              value: ClothSize.XXL,
                              groupValue: _size,
                              onChanged: (ClothSize? value) {
                                setState(() {
                                  _size = value;
                                });
                              }),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.cyan.shade100,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                          "Proident consectetur elit elit ea do culpa qui veniam minim. Ea exercitation culpa quis eu. Dolor amet incididunt ipsum laborum nostrud id enim anim aliquip sint labore ea excepteur magna. Voluptate est quis adipisicing quis duis aliquip nisi occaecat velit labore esse aliqua officia veniam. Duis nulla ipsum voluptate eiusmod velit cupidatat proident anim nisi est labore est sint culpa."),
                    ),
                    GestureDetector(
                        onTap: () {
                          getId(product[i].id);
                          print(product[i].id);
                          pay(product[i].cost);
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(color: Colors.red.shade200),
                          child: Center(
                            child: Text(
                              "ADD TO CART",
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        )),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
