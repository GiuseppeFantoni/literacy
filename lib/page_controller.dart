import 'package:flutter/material.dart';
import 'numbers_page.dart';
import 'alphabet_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'shared/pop_up_menu_options.dart';

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
                color: const Color(0xff17233b),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36.0),
                    topRight: Radius.circular(36.0))),
            padding: const EdgeInsets.all(3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                    color: Colors.transparent,
                    child: IconButton(
                        splashColor: const Color(0xff17233b).withOpacity(0.3),
                        color: Colors.white70,
                        onPressed: () {},
                        icon: Icon(Icons.menu_rounded, size: 30))),
                Text(
                  "Edu App",
                  style: GoogleFonts.petrona(
                      textStyle:
                          TextStyle(fontSize: 20, color: Colors.white70)),
                ),
                PopUpMenuOptions(),
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
                    height: 110,
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    AlphabetPage()));
                      },
                      child: Image(
                          image: AssetImage('assets/images/numberZero.png')),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xff17233b),
                          textStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(
                    height: 110,
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    NumberPage()));
                      },
                      child: Image(
                          image: AssetImage('assets/images/numberZero.png')),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xff17233b),
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
