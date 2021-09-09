import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../stubs.dart';

Widget buildEatingTab(String eatingTitle, Color backgroundColor,
    {double? padding, double? fontSize}) {
  return DecoratedBox(
    decoration: BoxDecoration(color: backgroundColor),
    child: Padding(
      padding: EdgeInsets.all(padding ?? 8.0),
      child: Text(
        eatingTitle,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize ?? 18,
          fontWeight: FontWeight.bold,
          // backgroundColor: backgroundColor,
        ),
      ),
    ),
  );
}

ListTile buildHomeListTile(int index) {
  return ListTile(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Image.asset(
            stubFoodImages[index],
            width: 100,
            height: 100,
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              buildEatingTab(stubEatingItems[index],
                  stubColorEating[stubEatingItems[index]]!,
                  padding: 4, fontSize: 12),
              Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      stubItems[index],
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '1600 - 200г',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
