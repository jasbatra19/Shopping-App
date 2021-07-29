import 'package:flutter/material.dart';
import 'package:shoppingapp/addtocart/addToCartEyewear.dart';
import 'package:shoppingapp/data/producteyewear.dart';
// import 'package:shoppingapp/data/product.dart';
import 'package:shoppingapp/screens/home.dart';

class Eyewear extends StatelessWidget {
  const Eyewear({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade100,
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade700,
        title: Text("Eyewear"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
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
                      i = product[index].id;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => addToCartEye()));
                    },
                    child: Card(
                      color: Colors.teal.shade50,
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
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Divider(
                            thickness: 2,
                            color: Colors.black,
                          ),
                          Text(
                            "Rs. ${product[index].cost}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
