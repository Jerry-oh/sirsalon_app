import 'package:flutter/material.dart';


class ContainerPicture extends StatelessWidget {

  ContainerPicture({this.image});

  final AssetImage image;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0,),
      height: 199.9,
      width: 330.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

