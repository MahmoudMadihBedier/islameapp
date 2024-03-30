import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islameapp/theming/my_them_data.dart';
import 'package:islameapp/widget_fragment/radio/riadio_button.dart';

class radioFragment extends StatelessWidget {
  const radioFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          // flex: 3,
            child:Image.asset("assets/images/radio_image.png"),),
            Container(
              width: double.infinity,

              color: ThemData.primryColor,
            ),
        Container(
          child: Text(" إذاعة القرآن الكريم",
                     textAlign: TextAlign.center,
                         style: TextStyle(
                     fontWeight: FontWeight.bold,
                        fontSize: 22,
          ),
        ),),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child:PlayButton(),

        )

      ],
    );
  }
}
