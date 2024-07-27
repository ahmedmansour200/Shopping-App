import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/persentation/pages/successful.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = false;

  void toggleCheckbox(bool? value) {
    setState(() {
      isChecked = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              width: 150,
              height: 150,
              child: const Image(image: AssetImage("assets/images/logo.jpg")),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 10, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign up!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
                Text(
                  "Create a new account",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("User Name"),
                  TextField(),
                ]),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Email"),
                  TextField(),
                ]),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Password"),
                  TextField(
                    obscureText: true,
                  ),
                ]),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Confirm Password"),
                  TextField(
                    obscureText: true,
                  ),
                ]),
          ),
          Row(
            children: [
              Checkbox(value: isChecked, onChanged: toggleCheckbox),
              Text(
                  "by creating an account you agree to our teams and conditions",
                  style: TextStyle(fontSize: 10))
            ],
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => SuccessfulScreen(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.black)),
                        child: const Text("Login",
                            style: TextStyle(
                              color: Colors.white, // Set the text color here
                              fontSize: 18,
                            ))),
                  ]))
        ],
      ),
    );
  }
}
