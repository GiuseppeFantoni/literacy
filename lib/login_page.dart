import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'page_controller.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var login = '';
  var password = '';

  showAlertDialogError() {
    if (password != '' && login != '') {
      login = '';
      password = '';
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => PageControllerEdu()));

      FocusScope.of(context).unfocus();

      return AwesomeDialog(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
        dialogBackgroundColor: Colors.white,
        context: context,
        autoHide: Duration(seconds: 2),
        borderSide: BorderSide(color: Colors.grey, width: 0.5),
        width: 400,
        headerAnimationLoop: false,
        animType: AnimType.SCALE,
        dialogType: DialogType.SUCCES,
        title: 'Bem vindo!',
        desc: 'Login feito com sucesso',
      )..show();
    }

    return AwesomeDialog(
      dialogBackgroundColor: Colors.white,
      context: context,
      borderSide: BorderSide(color: Colors.grey, width: 0.5),
      width: 400,
      buttonsBorderRadius: BorderRadius.all(Radius.circular(8)),
      headerAnimationLoop: false,
      animType: AnimType.SCALE,
      dialogType: DialogType.ERROR,
      title: 'Aviso',
      desc: 'Login ou senha invalidos',
      showCloseIcon: true,
      btnOkColor: Colors.red[400],
      btnOkOnPress: () {},
    )..show();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    colorFilter:
                        ColorFilter.mode(Colors.black26, BlendMode.darken),
                    image: AssetImage('assets/images/background.jpg'))),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                Flexible(
                    child: Center(
                        child: Container(
                            child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/loginLogo.png'),
                      width: 100,
                      height: 100,
                    ),
                    Text(
                      "Edu App",
                      style: GoogleFonts.petrona(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )))),
                Container(
                    child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 20.0),
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(20)),
                        child: TextFormField(
                            style: (TextStyle(color: Colors.white)),
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(bottom: 5),
                                child: Icon(
                                  Icons.person_outline_outlined,
                                  color: Colors.white,
                                ),
                              ),
                              border: InputBorder.none,
                              hintText: "Email ou usuário",
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                            onChanged: (value) {
                              setState(() {
                                login = value;
                              });
                            }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(20)),
                        child: TextFormField(
                          style: (TextStyle(color: Colors.white)),
                          enableSuggestions: false,
                          autocorrect: false,
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Icon(
                                Icons.vpn_key_rounded,
                                color: Colors.white,
                              ),
                            ),
                            border: InputBorder.none,
                            hintText: "Senha",
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                          onChanged: (value) {
                            setState(() {
                              password = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                "Entrar",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            ClipOval(
                              child: Material(
                                color: Colors.white
                                    .withOpacity(0.3), // button color
                                child: InkWell(
                                  splashColor: Colors.grey, // inkwell color
                                  child: SizedBox(
                                      width: 52,
                                      height: 52,
                                      child: Icon(
                                        Icons.arrow_forward_rounded,
                                        color: Colors.white,
                                      )),
                                  onTap: () {
                                    showAlertDialogError();
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.white38,
                      height: 10,
                      thickness: 1,
                      indent: 0,
                      endIndent: 0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Text(
                        "Clique aqui para criar uma conta.",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
