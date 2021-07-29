import 'package:flutter/material.dart';
import 'package:shoppingapp/data/product.dart';
import 'package:shoppingapp/screens/home.dart';
import 'package:shoppingapp/screens/payment.dart';

late int j;
void getId(int id) {
  j = id; //gets id of product
  push();
}

late int z;
int _selectedIndex = 0;
List showItem = [];
List text = [];
List image = [];
List<int> price = [];
void push() {
  showItem.add(j);
  image.add(product[j].image);
  text.add(product[j].title);
  price.add(product[j].cost);

  //adds id
  print(showItem.length);
}

int Cost = 0;

int pay(int c) {
  Cost += c;
  print(Cost);

  return Cost;
}

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Payment()));
      } else
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  showItem.clear();
                });
              },
              icon: Icon(Icons.clear))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: "pay now",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: "Shop More"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: showItem.length > 0
          ? ListView.builder(
              itemCount: showItem.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  key: UniqueKey(),
                  child: Card(
                    elevation: 50,
                    color: Colors.teal.shade100,
                    child: ListTile(
                      title: Text(
                        text[index],
                        style: TextStyle(
                            fontSize: 25,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w900),
                      ),
                      leading: Image.asset(image[index]),
                      subtitle: Text(
                        "Rs.${price[index]}",
                        style: TextStyle(
                            fontSize: 25,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w900),
                      ),
                      trailing: Icon(Icons.arrow_back),
                    ),
                  ),
                  direction: DismissDirection.endToStart,
                  onDismissed: (_) {
                    setState(() {
                      Cost = Cost - price[index];
                      print(Cost);
                      showItem.removeAt(index);
                    });
                  },
                );
              },
            )
          : Center(child: Text('No items')),
    );
  }
}
