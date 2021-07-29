import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/home.dart';

double score = 0;

// ignore: camel_case_types
class feedback extends StatefulWidget {
  const feedback({Key? key}) : super(key: key);

  @override
  _feedbackState createState() => _feedbackState();
}

// ignore: camel_case_types
class _feedbackState extends State<feedback> {
  double index = 0;

  int i = 0;
  List ques = [
    'Rate your Experience',
    'Did you like the choice of colours?',
    'Did we meet your expectations?',
    'How likely is it that you would recommend this app to your friend/colleagues',
    'Would u like to invest your time and resources in the apps like this? ',
    'Rate this app',
    ''
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade200,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Feedback"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Scaffold(
            body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/bg.jpeg"), fit: BoxFit.cover)),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.5),
                    color: Colors.teal.shade50,
                  ),
                  height: 300,
                  width: 400,
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        ques[i],
                        style: TextStyle(
                          fontFamily: "Satisfy",
                          fontWeight: FontWeight.normal,
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                      Slider(
                        activeColor: Colors.teal.shade500,
                        inactiveColor: Colors.grey.shade900,
                        value: index,
                        label: index.round().toString(),
                        onChanged: (valuesOfSlider) {
                          setState(() {
                            index = valuesOfSlider;
                          });
                        },
                        min: 0,
                        max: 5,
                        divisions: 5,
                      ),
                      Container(
                        padding: EdgeInsets.all(1),
                        alignment: Alignment.center,
                        height: 60,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.teal.shade600,
                        ),
                        child: TextButton(
                          onPressed: () {
                            nextButton();
                          },
                          child: Text(
                            "Next",
                            style: TextStyle(
                                fontFamily: "satisfy",
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void nextButton() {
    setState(() {
      if (i <= 5) {
        score += index;
        print(score);
        i++;
        if (i > 5) {
          Navigator.pop(context);
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (_) => newpage()),
              (Route<dynamic> route) => false);
        }
      }
    });
  }
}

// ignore: camel_case_types
class newpage extends StatefulWidget {
  const newpage({Key? key}) : super(key: key);

  @override
  _newpageState createState() => _newpageState();
}

// ignore: camel_case_types
class _newpageState extends State<newpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade300,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Feedback"),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            icon: Icon(Icons.home)),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/bg.jpeg"), fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.blueGrey),
                  margin: EdgeInsets.all(30),
                  child: display(),
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.teal.shade900,
                        borderRadius: BorderRadius.circular(5)),
                    child: TextButton(
                        onPressed: () {
                          // reset();
                          score = 0;
                          Navigator.pop(context);
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(builder: (_) => Home()),
                              (Route<dynamic> route) => false);
                        },
                        child: Text(
                          'Finish',
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        )))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget display() {
    if (score <= 10) {
      return Center(
        child: Container(
            height: 100,
            width: 200,
            margin: EdgeInsets.all(20.0),
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                'We are sorry for your inconvenience',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "satisfy",
                    color: Colors.red.shade900,
                    fontWeight: FontWeight.bold),
              ),
            )),
      );
    } else if (score >= 11 && score <= 20) {
      return Center(
        child: Container(
            margin: EdgeInsets.all(20.0),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Text(
                'Hope we serve you better next time',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.yellowAccent.shade700,
                    fontWeight: FontWeight.bold),
              ),
            )),
      );
    } else {
      return Center(
        child: Container(
            margin: EdgeInsets.all(20.0),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Text(
                'We hope you come back next time.',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
            )),
      );
    }
  }
}
