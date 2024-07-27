import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/persentation/pages/categories.dart';
import 'package:flutter_application_1/persentation/widgets/category2.dart';

class Categories2 extends StatelessWidget {
  const Categories2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.black),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0, top: 8),
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Categories()));
                },
                child: Text("Categories")),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
              padding: EdgeInsets.only(left: 15.0, top: 45),
              child: Row(
                children: [
                  Icon(Icons.search),
                  Expanded(
                    child: TextFormField(
                      decoration:
                          InputDecoration(hintText: "Search Categories"),
                    ),
                  )
                ],
              )),
          Expanded(
            child: SizedBox(
              height: 350.0,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                shrinkWrap: true,
                children: [
                  Category2(
                    title: "New Arrival",
                    productsNum: 208,
                  ),
                  Category2(
                    title: "New Arrival",
                    productsNum: 208,
                  ),
                  Category2(
                    title: "New Arrival",
                    productsNum: 208,
                  ),
                  Category2(
                    title: "New Arrival",
                    productsNum: 208,
                  ),
                  Category2(
                    title: "New Arrival",
                    productsNum: 208,
                  ),
                  Category2(
                    title: "New Arrival",
                    productsNum: 208,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      persistentFooterButtons: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black),
                child: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text("Home"),
              const SizedBox(
                width: 20,
              ),
              const Icon(Icons.shopping_cart),
              const SizedBox(
                width: 80,
              ),
              const Icon(Icons.notifications_active),
              const SizedBox(
                width: 80,
              ),
              const Icon(Icons.person)
            ],
          ),
        )
      ],
    );
  }
}
