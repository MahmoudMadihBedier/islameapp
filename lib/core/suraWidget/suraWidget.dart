import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../theming/my_them_data.dart';
import '../../widget_fragment/quran/soura_name.dart';

class suraWidget extends StatefulWidget {
  const suraWidget({super.key});

  @override
  State<suraWidget> createState() => _suraWidgetState();
}

class _suraWidgetState extends State<suraWidget> {
  String suraContant ='';
  List<String>suraLines=[];
  @override
  Widget build(BuildContext context) {
    SuraDetailsArgs args =ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs ;
    readSuraFile(args.fileName);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      padding: EdgeInsets.all(8),
      color: Colors.white30,
      child:  Column(
        mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(
            child: Container(
                child: Text(
                  textAlign: TextAlign.end,
                  args.suraName,style: TextStyle(
                    fontSize: 30 ,
                    fontWeight: FontWeight.bold),),),
            ),
            Container(
              width: double.infinity,
              color: ThemData.primryColor,
              height: 2,
            ),

    ]),);
  }
  void readSuraFile(String fileName) async{
    String fileComtant = await rootBundle.loadString('assets/files/${fileName}');
    suraContant=fileComtant;
    suraContant=suraContant.trim();
    suraLines=suraContant.split('\n');
    setState(() {

    });
  }
}
