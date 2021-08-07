import 'package:flutter/material.dart';
import 'package:shoppingapp/Feedbackpage/feedback.dart';
import 'package:shoppingapp/screens/cart.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade100,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Payment"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Total",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Rs.$Cost",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),
                  ),
                )
              ],
            ),
            Container(
              child: TextButton(
                  onPressed: () {
                    showItem.clear();
                    Cost = 0;

                    final snackBar = SnackBar(
                      content: const Text('Payment Successful'),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {
                          // Some code to undo the change.
                        },
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Text(
                    "Pay",
                    style: TextStyle(color: Colors.black, fontSize: 40),
                  )),
              decoration: BoxDecoration(
                  color: Colors.tealAccent.shade100,
                  borderRadius: BorderRadius.circular(10)),
              height: 100,
              width: 200,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Hope you liked the experience! keep Shopping with us:)",
                style: TextStyle(fontFamily: "satisfy", fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Please Give Us FeedBack, So we can Improve :)",
                style: TextStyle(fontFamily: "satisfy", fontSize: 20),
              ),
            ),
            Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.teal.shade50,
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => feedback()));
                  },
                  child: Text(
                    "FeedBack",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
