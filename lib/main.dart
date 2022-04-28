import 'package:flutter/material.dart';
import 'package:starbucks_app/FirstScreen/first_screen.dart';
import 'package:starbucks_app/second_screen.dart';
import 'package:starbucks_app/third_screen.dart';
import 'package:starbucks_app/fourthscreen/fourth_screen.dart';
import 'package:google_fonts/google_fonts.dart';


// void main() {
//   runApp((MyApp()));
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  final screens = [
    FirstScreen(),
    SecondScreen(),
    ThirdScreen(),
    FourthScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'BookMark',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity_rounded),
            label: 'Profile',
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        onTap: (index){
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}


// MaterialApp(
// debugShowCheckedModeBanner: false,
// home: FirstScreen(),
// );