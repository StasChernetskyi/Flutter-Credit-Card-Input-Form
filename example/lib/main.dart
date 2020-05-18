import 'package:flutter/material.dart';

import 'package:credit_card_input_form/credit_card_input_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
          child: Stack(children: [
        CreditCardInputForm(
          cardHeight: 170,
          frondCardColor: Colors.red,
          backCardColor: Colors.blueAccent,
          onStateChange: (currentState, cardInfo) {
            print(currentState);
            print(cardInfo);
          },
        ),
      ])),
    ));
  }
}
