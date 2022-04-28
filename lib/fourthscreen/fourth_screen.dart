import 'export_file.dart';


class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15.0,top: 20.0,bottom: 20.0),
            height: 100.0,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'J',
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 35.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100.0,
                  width: 60.0,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Jerry',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  ExampleContainer(
                    onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Language();
                      },
                      ),
                      );
                    },
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.signLanguage, size: 50.0,),
                        SizedBox(height: 8.0,),
                        Text(
                          'Language',
                          style: TextStyle(
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ExampleContainer(
                    onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ProfileInfo();
                      },
                      ),
                      );
                    },
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.pencilAlt, size: 50.0,),
                        SizedBox(height: 8.0,),
                        Text(
                          'Profile Info',
                          style: TextStyle(
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  ExampleContainer(
                    onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return MemberCard();
                      },
                      ),
                      );
                    },
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.addressCard, size: 50.0,),
                        SizedBox(height: 8.0,),
                        Text(
                          'Member Card',
                          style: TextStyle(
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ExampleContainer(
                    onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return VoucherScreen();
                      },
                      ),
                      );
                    },
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.percent, size: 50.0,),
                        SizedBox(height: 8.0,),
                        Text(
                          'Voucher',
                          style: TextStyle(
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  ExampleContainer(
                    onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return TermCondition();
                      },
                      ),
                      );
                    },
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.book, size: 50.0,),
                        SizedBox(height: 8.0,),
                        Text(
                          'Term and condition',
                          style: TextStyle(
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ExampleContainer(
                    onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return PrivacyPolicy();
                      },
                      ),
                      );
                    },
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.shieldAlt, size: 50.0,),
                        SizedBox(height: 8.0,),
                        Text(
                          'Privacy Policy',
                          style: TextStyle(
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  ExampleContainer(
                    onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ChangePassword();
                      },
                      ),
                      );
                    },
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.userSecret, size: 50.0,),
                        SizedBox(height: 8.0,),
                        Text(
                          'Change Password',
                          style: TextStyle(
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ExampleContainer(
                    onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ChangePhoneNumber();
                      },
                      ),
                      );
                    },
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.phone, size: 50.0,),
                        SizedBox(height: 8.0,),
                        Text(
                          'Change Phone Number',
                          style: TextStyle(
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 185,bottom: 15.0),
                child: ExampleContainer(
                  onPress: (){
                    Navigator.pop(context); 
                  },
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.alignLeft, size: 50.0,),
                      SizedBox(height: 8.0,),
                      Text(
                        'Logout',
                        style: TextStyle(
                          fontSize: 13.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
