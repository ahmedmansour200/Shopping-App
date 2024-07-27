import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/persentation/pages/register.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Container(
              width: 150,
              height: 150,
              child: const Image(image: AssetImage("assets/images/logo.jpg")),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 20, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
                Text(
                  "please login or sign up to continue our app",
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
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(Colors.black)),
                      child: const Text("Login",
                          style: TextStyle(
                            color: Colors.white, // Set the text color here
                            fontSize: 18,
                          ))),
                  const Text(
                    "or",
                    textAlign: TextAlign.center,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                              const Color.fromRGBO(59, 89, 153, 1))),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook, color: Colors.white),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "continue with facebook",
                            style: TextStyle(
                              color: Colors.white, // Set the text color here
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ),
                      );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.g_mobiledata, color: Colors.black),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "continue with Google",
                          style: TextStyle(
                            color: Colors.black, // Set the text color here
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ),
                      );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.apple, color: Colors.black),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "continue with Apple",
                          style: TextStyle(
                            color: Colors.black, // Set the text color here
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
