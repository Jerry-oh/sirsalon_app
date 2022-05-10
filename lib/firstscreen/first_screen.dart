import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:starbucks_app/firstscreen/ContainerPictures.dart';
import 'package:starbucks_app/firstscreen/Container.dart';
import 'package:flutter/material.dart';
import 'package:starbucks_app/firstscreen/place.dart';
import 'package:starbucks_app/model/user_model.dart';


class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {


  List<Place>places = [

    Place(name: '$kPlaceName THAMRIN',km: 0.79,image: 'images/sirsalon1.jpg'),
    Place(name: '$kPlaceName WAHIDIN',km: 0.94,image: 'images/sirsalon2.jpg'),
    Place(name: '$kPlaceName HM JONI',km: 1.29,image: 'images/sirsalon3.jpg'),
    Place(name: '$kPlaceName ASIA',km: 2.52,image: 'images/sirsalon4.jpg'),
    Place(name: '$kPlaceName MERAK JINGGA',km: 2.64,image: 'images/sirsalon5.jpg'),
    Place(name: '$kPlaceName SPARMAN 1',km: 2.65,image: 'images/sirsalon6.jpg'),
    Place(name: '$kPlaceName SPARMAN 2',km: 3.24,image: 'images/sirsalon7.jpg'),
    Place(name: '$kPlaceName MEDAN FAIR',km: 3.25,image: 'images/sirsalon8.jpg'),
    Place(name: '$kPlaceName ADAM MALIK' ,km: 5.50,image: 'images/sirsalon9.jpg'),
    Place(name: '$kPlaceName SETIA BUDI',km: 5.56,image: 'images/sirsalon10.jpg'),
    Place(name: '$kPlaceName MILLENIUM',km: 6.22,image: 'images/sirsalon12.jpg'),
    Place(name: '$kPlaceName RINGROAD CITY WALKS',km: 7.9,image: 'images/sirsalon13.jpg'),
    Place(name: '$kPlaceName MARELAN',km: 13.18,image: 'images/sirsalon14.jpg'),
    Place(name: '$kPlaceName BATANG HARI',km: 96.53,image: 'images/sirsalon15.jpg'),

  ];

  User user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseFirestore.instance
    .collection("users")
    .doc(user.uid)
    .get()
    .then((value){
      this.loggedInUser = UserModel.fromMap(value.data());
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        // ignore: deprecated_member_use
        title: FlatButton(
          child: Text(
            "${loggedInUser.address}",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          onPressed: (){
            print('Medan got pressed');
          },
        ),
        actions: [
          IconButton(icon:
          Icon(Icons.notifications_none,
            size: 25.0,
            color: Colors.black,
          ),
              onPressed: (){
            print('Notification got pressed');
              }
              ),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              height: 199.0,
              margin: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      ContainerPicture(image: AssetImage('images/promo1.jpg'),),
                      ContainerPicture(image: AssetImage('images/promo2.jpg'),),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 140.0),
                    child: Container(
                      child: Icon(
                        Icons.more_horiz,
                        size: 40.0,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  Text(
                    'Nearby Barber',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.black
                    ),
                  ),
                  ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: places.length,
                      itemBuilder: (context, index){
                      return GestureDetector(
                          onTap: (){
                            print('Place got tapped');
                          },
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10.0,top: 10.0),
                              height: 199,
                              width: 330,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28),
                                image: DecorationImage(
                                  image: AssetImage(places[index].image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 10,
                                    right: 20,
                                    child: Icon(
                                      Icons.navigate_next,
                                      size: 50.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 20,
                                    left: 20,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          places[index].name,
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          places[index].km.toString() + 'KM',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white,
                                          ),
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
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
