import 'package:flutter/material.dart';
import 'package:starbucks_app/Loginscreen.dart';
import 'package:starbucks_app/Registerscreen.dart';
import 'package:starbucks_app/fourthscreen/export_file.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hi"),
            Container(
              child: Image(image: AssetImage('images/logo.jpg'),),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  minimumSize: Size(120, 50),
                  primary: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        30),
                  ),
                  tapTargetSize: MaterialTapTargetSize.padded,
                ),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RegistrationScreen();
                      },
                    ),
                  );
                },
                child: Text("Register"),
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  minimumSize: Size(120, 50),
                  primary: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        30),
                  ),
                  tapTargetSize: MaterialTapTargetSize.padded,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
