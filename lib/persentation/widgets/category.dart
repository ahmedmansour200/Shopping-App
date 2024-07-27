import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Category extends StatelessWidget {
  final IconData icon;
  final int productsNum;
  final String title;

  const Category(
      {super.key,
      required this.icon,
      required this.productsNum,
      required this.title});
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.black,
        child: ListTile(
            minTileHeight: 85,
            tileColor: Colors.transparent,
            leading: Icon(
              icon,
              color: Colors.white,
            ),
            trailing: Text(
              "${productsNum} product",
              style: TextStyle(color: Colors.white),
            ),
            title: Text(title, style: TextStyle(color: Colors.white))));
  }
}
