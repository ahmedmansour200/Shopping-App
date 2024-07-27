import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/persentation/widgets/category.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.black),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0, top: 8),
            child: Icon(
              Icons.search,
              size: 40,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4.0, top: 45),
            child: Text(
              textAlign: TextAlign.start,
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListBody(
            children: [
              Category(
                icon: Icons.shopping_cart,
                title: "New Arrival",
                productsNum: 208,
              ),
              Category(
                icon: Icons.shopping_bag,
                title: "Bags",
                productsNum: 108,
              ),
              Category(
                icon: Icons.shopping_cart,
                title: "shoeses",
                productsNum: 208,
              ),
              Category(
                icon: Icons.shopping_cart,
                title: "clothes",
                productsNum: 238,
              ),
              Category(
                icon: Icons.electric_bolt,
                title: "Electronics",
                productsNum: 208,
              ),
              Category(
                icon: Icons.shopping_cart,
                title: "Jewelliers",
                productsNum: 208,
              ),
            ],
          )
        ],
      ),
      persistentFooterButtons: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black),
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text("Home"),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.shopping_cart),
              SizedBox(
                width: 70,
              ),
              Icon(Icons.notifications_active),
              SizedBox(
                width: 80,
              ),
              Icon(Icons.person)
            ],
          ),
        )
      ],
    );
  }
}
