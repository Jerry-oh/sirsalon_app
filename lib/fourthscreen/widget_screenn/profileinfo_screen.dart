import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:starbucks_app/model/user_model.dart';

class ProfileInfo extends StatefulWidget {
  @override
  _ProfileInfoState createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  User user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  var txt = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
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
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: ListView(
          children: [
            Column(
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
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            controller: txt,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
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
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Name',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        color: Colors.black),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Text(
                    "${loggedInUser.firstName} ${loggedInUser.secondName}",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Birth Date',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        color: Colors.black),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Text(
                    "${loggedInUser.birth}".toString(),
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Address',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        color: Colors.black),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Text(
                    "${loggedInUser.address}",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
                // Expanded(
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       // ignore: deprecated_member_use
                //       FlatButton(
                //         onPressed: (){
                //           print('Edit Profile got pressed');
                //         },
                //         child: Container(
                //           margin: EdgeInsets.all(15),
                //           height: 50.0,
                //           width: double.infinity,
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(10.0),
                //             color: Colors.black,
                //           ),
                //           child: Align(
                //             alignment: Alignment.center,
                //             child: Text(
                //                 'Edit Profile',
                //               style: TextStyle(
                //                 fontWeight: FontWeight.w500,
                //                 fontSize: 20.0,
                //                 color: Colors.white,
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Future<void> _refresh(){
    setState(() {
      txt.text = "${loggedInUser.firstName[0]}".toUpperCase();
    });
    return Fluttertoast.showToast(msg: "Refresh");
  }
}
