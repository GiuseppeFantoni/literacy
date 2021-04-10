import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'shared/number_component.dart';
import 'package:google_fonts/google_fonts.dart';
import 'shared/pop_up_menu_options.dart';

class NumberPage extends StatelessWidget {
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
                IconButton(
                    color: Colors.white70,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_rounded, size: 30)),
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
                        child: Swiper(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return NumberComponent(
                  number: index,
                );
              },
              control: new SwiperControl(color: Colors.white70),
            )))),
          ]))
    ]));
  }
}
