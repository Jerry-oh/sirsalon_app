import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
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
          'Profile Info',
          style: TextStyle(
            color: Colors.black,
            fontSize: 27.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'J',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 35.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.0,),
          Container(
            margin: EdgeInsets.only(left: 15.0),
            child: Text(
              'Name',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0),
            child: Text(
              'Jerry',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.black
              ),
            ),
          ),
          SizedBox(height: 5.0,),
          Container(
            margin: EdgeInsets.only(left: 15.0),
            child: Text(
              'Birth Date',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0),
            child: Text(
              '2004-04-14',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.black
              ),
            ),
          ),
          SizedBox(height: 5.0,),
          Container(
            margin: EdgeInsets.only(left: 15.0),
            child: Text(
              'Address',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0),
            child: Text(
              'Jl.Sutomo',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.black
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(
                  onPressed: (){
                    print('Edit Profile got pressed');
                  },
                  child: Container(
                    margin: EdgeInsets.all(15),
                    height: 50.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.black,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                          'Edit Profile',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
