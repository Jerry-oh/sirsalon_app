import 'package:flutter/material.dart';


class ExampleContainer extends StatelessWidget {

  ExampleContainer({this.cardChild, this.onPress});

  final cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.only(left: 15.0, top: 15.0),
        height: 120.0,
        width: 159.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 3,
                offset: Offset(0, 3),
              ),
            ]
        ),
      ),
    );
  }
}

