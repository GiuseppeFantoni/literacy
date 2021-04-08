import 'package:flutter/material.dart';
import 'package:literacy/shared/constantes.dart';
import 'package:google_fonts/google_fonts.dart';

class NumberComponent extends StatelessWidget {
  NumberComponent({@required this.number});
  final number;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 175,
          width: 300,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.2),
                spreadRadius: 0.1,
                blurRadius: 3,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xff202028),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 0, 0, 200),
          child: Image(
            image: AssetImage(numberConstantes[number]),
            width: numberConstantesSizes[number]["widget"],
            height: numberConstantesSizes[number]["height"],
          ),
        ),
        Text(
          numberConstantesName[number],
          style: GoogleFonts.petrona(
            textStyle: TextStyle(
                color: Colors.white70,
                fontSize: 45,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
