import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import '../OntkoppelSchap/gekoppeld_aan.dart';
import '../herkalibratie_widget.dart';

class Barcode extends StatelessWidget {
  const Barcode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Future ScanBarcode() async {
      String tmp = await FlutterBarcodeScanner.scanBarcode(
          '#F00000', 'Cancel', true, ScanMode.BARCODE);
      if (int.tryParse(tmp) != -1) {
        Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) =>
                  GekoppeldAan(tmp),
              transitionDuration: Duration.zero,
            ));
      } else {
        Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) =>
                  const Herkalibratie(),
              transitionDuration: Duration.zero,
            ));
      }
    }

    return InkWell(
        child: Container(
          margin: const EdgeInsets.only(top: 5, bottom: 10),
          width: 350,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromARGB(255, 20, 39, 155)),
          child: const Center(
            child: Text(
              'Ontkoppel schap',
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        onTap: () {
          ScanBarcode();
        });
  }
}
