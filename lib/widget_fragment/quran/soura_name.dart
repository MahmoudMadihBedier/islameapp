import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islameapp/widget_fragment/quran/sura_details.dart';

class suraName extends StatelessWidget {
  int index;
  String SuraName;

  suraName(this.SuraName,this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, suraDetais.Route_Name,arguments:
        SuraDetailsArgs(SuraName, '${index+1}.txt'));
      },
      child: Container(
        child: Text(SuraName,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            )),
      ),
    );
  }
}
class SuraDetailsArgs{
  String suraName;
  String fileName;
  SuraDetailsArgs(this.suraName,this.fileName);
}
