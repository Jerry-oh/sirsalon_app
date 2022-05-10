import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:starbucks_app/MyHomePage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:starbucks_app/Registerscreen.dart';
import 'package:starbucks_app/fourthscreen/export_file.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //form key
  final _formKey = GlobalKey<FormState>();

  //editing controller
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  final _auth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
    //emailField
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      // ignore: missing_return
      validator: (value){
        if (value.isEmpty) {
          return ("Please enter your email");
        }
        if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
          return ("Please enter a valid email");
        }
        return null;
      },
      onSaved: (value) {
        emailController.text = value.toString();
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Username',
      ),
    );

    //passwordField
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      // ignore: missing_return
      validator: (value){
        // ReqExp regex = new RegExp(r'^.{6,}$');
        if(value.isEmpty){
          return ("Password Required to Login");
        }
        if(!RegExp(r'^.{6,}$').hasMatch(value)){
          return ("Please Enter Valid Password,Min.6 Character");
        }
        return null;

      },
      onSaved: (value) {
        passwordController.text = value.toString();
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Password',
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Hi!,Welcome Back <3'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 180,
                    width: 180,
                    child: Image(
                      image: AssetImage('images/logo2.png'),
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: EdgeInsets.all(10),
                    child: emailField,
                  ),
                  Container(
                    height: 50,
                    margin: EdgeInsets.all(10),
                    child: passwordField,
                  ),
                  Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(10),
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.blueGrey)),
                      onPressed: () {
                        signIn(emailController.text, passwordController.text);
                      },
                      padding: EdgeInsets.all(10.0),
                      color: Colors.blueGrey,
                      textColor: Colors.white,
                      child: Text("Login", style: TextStyle(fontSize: 15)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Dont't have an account?"),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return RegistrationScreen();
                              },
                            ),
                          );
                        },
                        child: Text(
                          "Register Now",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void signIn(String email, String password) async
  {
    if(_formKey.currentState.validate())
    {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
            Fluttertoast.showToast(msg: "Login Successfull"),
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyHomePage()))
      }).catchError((e)
      {
        Fluttertoast.showToast(msg: e.message);
      });
    }
  }

}


