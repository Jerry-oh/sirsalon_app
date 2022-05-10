import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:starbucks_app/FirstPage.dart';
import 'package:starbucks_app/model/user_model.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  //form key
  final _formKey = GlobalKey<FormState>();

  //editing controller
  final TextEditingController firstNameControler = new TextEditingController();
  final TextEditingController secondNameController = new TextEditingController();
  final TextEditingController addressController = new TextEditingController();
  final TextEditingController birthController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    //firstName Field
    final firstNameField = TextFormField(
      autofocus: false,
      controller: firstNameControler,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value.isEmpty) {
          return ("First Name Required to Register");
        }
        if (!RegExp(r'^.{3,}$').hasMatch(value)) {
          return ("Please Enter Valid Name,Min.3 Character");
        }
        return null;
      },
      onSaved: (value) {
        firstNameControler.text = value;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        border: OutlineInputBorder(),
        labelText: 'First Name',
      ),
    );

    //secondName Field
    final secondNameField = TextFormField(
      autofocus: false,
      controller: secondNameController,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value.isEmpty) {
          return ("Second Name Required to Register");
        }
        return null;
      },
      onSaved: (value) {
        secondNameController.text = value;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        border: OutlineInputBorder(),
        labelText: 'Second Name',
      ),
    );

    //address Field
    final addressField = TextFormField(
      autofocus: false,
      controller: addressController,
      keyboardType: TextInputType.streetAddress,
      validator: (value) {
        if (value.isEmpty) {
          return ("Address Required to Register");
        }
        return null;
      },
      onSaved: (value) {
        addressController.text = value;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.add_road),
        border: OutlineInputBorder(),
        labelText: 'Address',
      ),
    );

    //birth Field
    final birthField = TextFormField(
      autofocus: false,
      controller: birthController,
      keyboardType: TextInputType.datetime,
      validator: (value) {
        if (value.isEmpty) {
          return ("Birth Date Required to Register");
        }
        return null;
      },
      onSaved: (value) {
        birthController.text = value;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.date_range_sharp),
        border: OutlineInputBorder(),
        labelText: 'Birth Of Date',
      ),
    );

    //email Field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value.isEmpty) {
          return ("Please enter your email");
        }
        if (!RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value)) {
          return ("Please enter a valid email");
        }
        return null;
      },
      onSaved: (value) {
        emailController.text = value;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email_outlined),
        border: OutlineInputBorder(),
        labelText: 'Email Address',
      ),
    );

    //passoword Field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      keyboardType: TextInputType.name,
      obscureText: true,
      validator: (value) {
        // ReqExp regex = new RegExp(r'^.{6,}$');
        if (value.isEmpty) {
          return ("Password Required to Login");
        }
        if (!RegExp(r'^.{6,}$').hasMatch(value)) {
          return ("Please Enter Valid Password,Min.6 Character");
        }
        return null;
      },
      onSaved: (value) {
        passwordController.text = value;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        border: OutlineInputBorder(),
        labelText: 'Password',
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Join us! <3'),
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
                      image: AssetImage('images/login.jpg'),
                    ),
                  ),
                  Container(
                    height: 40,
                    margin: EdgeInsets.all(10),
                    child: firstNameField,
                  ),
                  Container(
                    height: 40,
                    margin: EdgeInsets.all(10),
                    child: secondNameField,
                  ),
                  Container(
                    height: 40,
                    margin: EdgeInsets.all(10),
                    child: addressField,
                  ),
                  Container(
                    height: 40,
                    margin: EdgeInsets.all(10),
                    child: birthField,
                  ),
                  Container(
                    height: 40,
                    margin: EdgeInsets.all(10),
                    child: emailField,
                  ),
                  Container(
                    height: 40,
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
                        signUp(emailController.text, passwordController.text);
                      },
                      padding: EdgeInsets.all(10.0),
                      color: Colors.blueGrey,
                      textColor: Colors.white,
                      child: Text("Register", style: TextStyle(fontSize: 15)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void signUp(String email, String password) async {
    if (_formKey.currentState.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailsToFireStore()})
          .catchError((e) {
        Fluttertoast.showToast(msg: e.message);
      });
    }
  }

  postDetailsToFireStore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User user = _auth.currentUser;

    UserModel userModel = UserModel();

    //writing all the values
    userModel.uid = user.uid;
    userModel.email = user.email;
    userModel.firstName = firstNameControler.text;
    userModel.secondName = secondNameController.text;
    userModel.address = addressController.text;
    userModel.birth = birthController.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Thankyou For Registering!");

    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => FirstPage()), (route) => false);
  }
}
