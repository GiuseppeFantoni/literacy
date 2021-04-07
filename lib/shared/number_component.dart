import 'package:flutter/material.dart';
import 'package:literacy/shared/constantes.dart';

class NumberComponent extends StatelessWidget {
  NumberComponent({@required this.number});
  final number;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 0, 0, 220),
          child: Image(
            image: AssetImage(numberConstantes[number]),
            width: 120,
            height: 120,
          ),
        ),
      ],
    );
  }
}
