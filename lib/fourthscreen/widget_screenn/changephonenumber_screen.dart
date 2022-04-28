import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ChangePhoneNumber extends StatefulWidget {

  @override
  _ChangePhoneNumberState createState() => _ChangePhoneNumberState();
}

class _ChangePhoneNumberState extends State<ChangePhoneNumber> {
  bool _secureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
            height: 130,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Input Your Password',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Please type your password',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            width: double.infinity,
            child: Container(
              height: 55,
              width: 230,
              child: Align(
                alignment: Alignment.center,
                child: TextFormField(
                  obscureText: _secureText,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    suffixIcon: IconButton(
                        icon: Icon(_secureText ? Icons.remove_red_eye : Icons.security),
                        onPressed: (){
                          setState(() {
                            _secureText = !_secureText;
                          });
                        }
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FlatButton(
            onPressed: (){
              print('Forgot Password got pressed');
            },
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Forgot Password',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue
                ),
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
                    print('Next got pressed');
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
                        'Next',
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
