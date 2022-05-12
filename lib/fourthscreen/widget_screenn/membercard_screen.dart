import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../model/user_model.dart';

class MemberCard extends StatefulWidget {
  @override
  _MemberCardState createState() => _MemberCardState();
}

class _MemberCardState extends State<MemberCard> {
  User user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          'Member Card',
          style: TextStyle(
            color: Colors.black,
            fontSize: 27.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 219,
                  width: double.infinity,
                  child: Container(
                    margin: EdgeInsets.all(15),
                    height: 194,
                    width: 299,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                      image: DecorationImage(
                        image: AssetImage('images/background1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 20,
                          left: 15,
                          child: Text(
                            "${loggedInUser.firstName}",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 25.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 70,
                          left: 15,
                          child: Text(
                            'Points',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 90,
                          left: 15,
                          child: Text(
                            '0',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 110,
                          left: 15,
                          child: Text(
                            'Code',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 140,
                          left: 15,
                          child: Text(
                            '3UJBLNU',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 110,
                          left: 150,
                          child: Text(
                            'Since',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 140,
                          left: 150,
                          child: Text(
                            '02 Oct 2021',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 20,
                          top: 20,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('images/logo2.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, top: 5),
                  child: Text(
                    'History',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  width: double.infinity,
                  height: 249,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        'No Transaction',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'It seems like you have no any transaction yet, start using your points',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Future<void> _refresh(){
    setState(() {

    });
    return Fluttertoast.showToast(msg: "Refresh");
  }
}
