
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VoucherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Voucher',
          style: TextStyle(
            color: Colors.black,
            fontSize: 27.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 25, top: 40, right: 3,),
            height: 120,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(0, 3),
                ),
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 13),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('promo code:', style: TextStyle(color: Colors.grey, fontSize: 13.0, fontWeight: FontWeight.w400),),
                      SizedBox(
                        width: 8,
                      ),
                      Text('A5T5YVCF', style: TextStyle(color: Colors.blue, fontSize: 13.0, fontWeight: FontWeight.w400),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text('Valid until November 02,2021', style: TextStyle(color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.w400),),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            height: 120,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 3),
                  ),
                ]
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 45,
                    left: 35,
                    child: Text(
                      '50%',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                ),
                Positioned(
                  right: 15,
                    top: 15,
                    child: Text(
                      'off',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Align(
// alignment: Alignment.center,
// child: Text(
// '50%',
// style: TextStyle(
// fontWeight: FontWeight.w600,
// fontSize: 15,
// color: Colors.black,
// ),
// ),
// ),