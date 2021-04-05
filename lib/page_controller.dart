import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';

class PageControllerEdu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(children: [
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
                image: AssetImage('assets/images/background.jpg'))),
      ),
      Scaffold(
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36.0),
                    topRight: Radius.circular(36.0))),
            padding: const EdgeInsets.all(6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => LoginPage()));
                    },
                    icon: Icon(Icons.arrow_back_rounded, size: 30)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.menu_rounded, size: 30)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search_rounded, size: 30)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.account_circle_rounded,
                      size: 30,
                    ))
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
          body: Column(children: [
            Flexible(
                child: Center(
                    child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 100,
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Alfabeto'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white70,
                          textStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Numero'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white70,
                          textStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ))),
          ]))
    ]));
  }
}