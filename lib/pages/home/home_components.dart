import 'package:flutter/material.dart';

class HomeComponents {
  Widget contentsRow(BuildContext context) {
    final yourScrollController = ScrollController();

    return Column(
      children: [
        Text("asd"),
        SizedBox(
          height: 400,
          child: Scrollbar(
            thumbVisibility: true,
            controller: yourScrollController,
            child: ListView(
              controller: yourScrollController,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 160.0,
                  color: Colors.red,
                ),
                Container(
                  width: 160.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 160.0,
                  color: Colors.green,
                ),
                Container(
                  width: 160.0,
                  color: Colors.yellow,
                ),
                Container(
                  width: 160.0,
                  color: Colors.orange,
                ),
                Container(
                  width: 160.0,
                  color: Colors.red,
                ),
                Container(
                  width: 160.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 160.0,
                  color: Colors.green,
                ),
                Container(
                  width: 160.0,
                  color: Colors.yellow,
                ),
                Container(
                  width: 160.0,
                  color: Colors.orange,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
