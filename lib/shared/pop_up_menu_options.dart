import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:literacy/login_page.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

enum MenuOption { Perfil, Sair }

class PopUpMenuOptions extends StatelessWidget {
  void choiceAction(MenuOption param, context) {
    if (MenuOption.Sair == param) {
      AwesomeDialog(
        dialogBackgroundColor: Colors.white,
        context: context,
        borderSide: BorderSide(color: Colors.grey, width: 0.5),
        width: 400,
        buttonsBorderRadius: BorderRadius.all(Radius.circular(8)),
        headerAnimationLoop: false,
        animType: AnimType.SCALE,
        dialogType: DialogType.WARNING,
        title: 'Ops,',
        desc: 'Você realmente deseja sair?',
        showCloseIcon: true,
        btnOkColor: Colors.yellow[800],
        btnCancelOnPress: () {},
        btnCancelText: "Cancelar",
        btnOkText: "Sim",
        btnOkOnPress: () {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => LoginPage()),
              (Route<dynamic> route) => false);
        },
      )..show();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: PopupMenuButton(
        offset: const Offset(-80, 0),
        icon: Icon(
          Icons.account_circle,
          size: 30,
          color: Colors.white70,
        ),
        color: const Color(0xff17233b),
        onSelected: (choice) => choiceAction(choice, context),
        itemBuilder: (BuildContext context) {
          return <PopupMenuEntry<MenuOption>>[
            PopupMenuItem(
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.account_circle_outlined,
                    size: 20,
                    color: Colors.white70,
                  ),
                ),
                Text(
                  'Perfil',
                  style: GoogleFonts.petrona(
                      textStyle: TextStyle(color: Colors.white70)),
                ),
              ]),
              value: MenuOption.Perfil,
            ),
            PopupMenuItem(
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.login_outlined,
                    size: 20,
                    color: Colors.white70,
                  ),
                ),
                Text(
                  'Sair',
                  style: GoogleFonts.petrona(
                      textStyle: TextStyle(color: Colors.white70)),
                ),
              ]),
              value: MenuOption.Sair,
            ),
          ];
        },
      ),
    );
  }
}
