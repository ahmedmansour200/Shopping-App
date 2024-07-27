import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/persentation/pages/categories2.dart';

class SuccessfulScreen extends StatelessWidget {
  const SuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(),
            Icon(
              Icons.check_circle_outline,
              color: Colors.green,
              size: 100,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Successful!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                      "you have registered successfully in our app and started working in it",
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => Categories2(),
                    ));
                  },
                  child: Text(
                    "Start Shopping",
                    style: TextStyle(
                      color: Colors.white, // Set the text color here
                      fontSize: 18,
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.black))),
            )
          ]),
    ));
  }
}
