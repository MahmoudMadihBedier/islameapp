import 'package:flutter/cupertino.dart';

class suraName extends StatelessWidget {
  String SuraName;

  suraName(this.SuraName);

  @override
  Widget build(BuildContext context) {
    return Text(SuraName,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ));
  }
}
