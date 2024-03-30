import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  static String ROUTE_NAME = "home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    int currentIndex=0;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/default_bg.png"))),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text(
              "اسلامي",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          bottomNavigationBar: Theme(
            data: ThemeData(
              canvasColor: Color(0xffB7935F)
            ),
            child: BottomNavigationBar(
              onTap: (index) {
                currentIndex=index;
                setState(() {
                });
                print(currentIndex);
                
              },
              selectedItemColor: Color(0xff0F1424),
             currentIndex: currentIndex,
              backgroundColor: const Color(0xffB7935F),
              items:  [
                BottomNavigationBarItem(
                    label: "Qouran",
                    icon: ImageIcon(AssetImage("assets/images/icon_quran.png"))),
                BottomNavigationBarItem(
                    label: "hedeth",
                    icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png"))),
                BottomNavigationBarItem(
                    label: "Qouran",
                    icon: ImageIcon(AssetImage("assets/images/icon_radio.png"))),
                BottomNavigationBarItem(
                    label: "Qouran",
                    icon: ImageIcon(AssetImage("assets/images/icon_sebha.png"))),
              ],
            ),
          )),
    );
  }
}
