import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theming/my_them_data.dart';
class sebhaFragment extends StatefulWidget {
  const sebhaFragment({super.key});

  @override
  State<sebhaFragment> createState() => _sebhaFragmentState();
}

class _sebhaFragmentState extends State<sebhaFragment> {
  int num_tasbhe=0 ;
  List<String> type_of_tasabeh=[ 'الله اكبر','سبحان الله','الحمد لله'];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            flex: 3, child: Image.asset("assets/images/body_sebha_logo.png")),
        Expanded(
            flex: 7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'عدد التسبيحات',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${num_tasbhe}',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                    onPressed: () {
                      num_tasbhe++;
                      setState((){

                      });
                    },
                    child: Text(
                      "سبحان الله",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        maximumSize: Size(150, 50),
                        backgroundColor: ThemData.primryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
              ],
            ))
      ],
    );
  }
  // void TypeOfTsabeh(){
  //   if (num_tasbhe==33){
  //     type_of_tasabeh[index+1];
  //   num_tasbhe=0;
  //   }
  // }
}
