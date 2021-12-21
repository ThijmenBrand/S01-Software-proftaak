import 'package:flutter/material.dart';

import '../../appbar.dart';

class Bevestig extends StatelessWidget {
  const Bevestig({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            'Het gemeten gewicht is:',
            style: TextStyle(fontSize: 18.0),
          ),
        ),
        Text(
          '0 Gram',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          'Als dit gewicht logisch is, sla dit op. Lijkt het gewicht incorrect? Bezoek dan de error pagina voor potentiële fouten.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18.0,
          ),
        )
      ],
    );
  }
}
