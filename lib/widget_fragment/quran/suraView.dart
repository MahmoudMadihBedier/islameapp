import 'package:flutter/cupertino.dart';

class SuaraView extends StatelessWidget {
  int index ;
 String View;
SuaraView(this.View,this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Row(
        children: [
          Text('${View}' ,maxLines: 6,textHeightBehavior: TextHeightBehavior(applyHeightToLastDescent: true),textAlign: TextAlign.end,style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18
          ),),
          Text('$index+1',textAlign: TextAlign.start,)
          
        ],
      ),
    );
  }
}
