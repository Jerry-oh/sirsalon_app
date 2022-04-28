
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Languages{
  Indo,
  Inggris,
}



class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {

  Languages selectedLanguage;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(15.0),
                      height: 55,
                      width: 230,
                      child: Align(
                        alignment: Alignment.center,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 85,
                      height: 55,
                      margin: EdgeInsets.only(top: 15, bottom: 15),
                      child: FlatButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                      ),
                    ),
                  ],
                ),
              ),
              LanguageChoosen(
                colour: selectedLanguage == Languages.Indo ? Colors.black : Colors.red,
                texts: 'Bahasa Indonesia',
                onPress: (){
                  setState(() {
                    selectedLanguage = Languages.Indo;
                  });
                },
              ),
              LanguageChoosen(
                colour: selectedLanguage == Languages.Inggris ? Colors.black : Colors.red,
                texts: 'English',
                onPress: (){
                  setState(() {
                    selectedLanguage = Languages.Inggris;
                  });
                },
              ),
            ],
          ),
      ),
    );
  }
}

class LanguageChoosen extends StatelessWidget {

  LanguageChoosen({this.onPress, this.texts, this.colour,});

  final Color colour;
  final Function onPress;
  final String texts;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPress,
      child: Container(
        margin: EdgeInsets.only(left: 15.0, bottom: 15.0),
        child: Text(
          texts,
          style: TextStyle(
            color: colour,
            fontSize: 23.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
// Container(
// margin: EdgeInsets.only(left: 15.0, bottom: 15.0),
// child: Text(
// 'English',
// style: TextStyle(
// color: Colors.red,
// fontSize: 23.0,
// fontWeight: FontWeight.w400,
// ),
// ),
// ),