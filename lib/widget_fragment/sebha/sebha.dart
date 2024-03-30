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
  int num_tasbhe = 0;

  int index = 0;

  List<String> type_of_tasabeh = ['الله اكبر', 'سبحان الله', 'الحمد لله'];

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
                      TypeOfTsabeh();
                      setState(() {});
                    },
                    style: ElevatedButton.styleFrom(
                        maximumSize: Size(150, 50),
                        backgroundColor: ThemData.primryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      "${type_of_tasabeh[index]}",
                      style: TextStyle(fontSize: 20),
                    )),
              ],
            ))
      ],
    );
  }

  void TypeOfTsabeh() {
    for (int i = 0; i < type_of_tasabeh.length; i++) {
      if (num_tasbhe == 33) {
        if (index <= 3) {
          index++;
          num_tasbhe = 0;
          setState(() {});
          num_tasbhe = 0;
        }
        if (index == 3) {
          index = index - 3;
        }
      }
    }
  }
}
