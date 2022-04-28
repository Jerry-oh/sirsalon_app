
import 'file:///C:/Users/Jimmi/AndroidStudioProjects/starbucks_app/lib/FirstScreen/place.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


const kPlaceName = 'SIR SALON';

class ContainerPictures extends StatefulWidget {

  ContainerPictures({this.image});

  final AssetImage image;

  @override
  _ContainerPicturesState createState() => _ContainerPicturesState();
}

class _ContainerPicturesState extends State<ContainerPictures> {
  List<Place>places = [

    Place(name: '$kPlaceName THAMRIN',km: 0.79,),
    Place(name: '$kPlaceName WAHIDIN',km: 0.94),
    Place(name: '$kPlaceName HM JONI',km: 1.29),
    Place(name: '$kPlaceName ASIA',km: 2.52),
    Place(name: '$kPlaceName MERAK JINGGA',km: 2.64),
    Place(name: '$kPlaceName SPARMAN 1',km: 2.65),
    Place(name: '$kPlaceName SPARMAN 2',km: 3.24),
    Place(name: '$kPlaceName MEDAN FAIR',km: 3.25),
    Place(name: '$kPlaceName ADAM MALIK' ,km: 5.56),
    Place(name: '$kPlaceName SETIA BUDI',km: 5.50),
    Place(name: '$kPlaceName MILLENIUM',km: 6.22),
    Place(name: '$kPlaceName RINGROAD CITY WALKS',km: 7.9),
    Place(name: '$kPlaceName MARELAN',km: 13.18),
    Place(name: '$kPlaceName BATANG HARI',km: 95.39),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (context, index){
        return Container(
          margin: EdgeInsets.only(right: 10.0,top: 10.0),
          height: 199,
          width: 330,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            image: DecorationImage(
              image: widget.image,
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
                      '20.0KM',
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
        );
      },

    );
  }
}
//navigate next
//more horiz
