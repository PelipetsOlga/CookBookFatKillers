import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildEatingTab(String eatingTitle, Color backgroundColor ) {
  return DecoratedBox(
    decoration: BoxDecoration(color: backgroundColor),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        eatingTitle,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          // backgroundColor: backgroundColor,
        ),
      ),
    ),
  );
}