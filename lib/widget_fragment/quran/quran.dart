import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islameapp/widget_fragment/quran/soura_name.dart';

import '../../theming/my_them_data.dart';

class quarnFragmant extends StatelessWidget {
  List<String> suraNames =["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 3,
              child: Image.asset("assets/images/qur2an_screen_logo.png")),
          Container(
            width: double.infinity,
            color: ThemData.primryColor,
            height: 2,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical :4),
            child: Text(
              "اسم السورة",
              textAlign: TextAlign.center,
              style: TextStyle(

                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: ThemData.primryColor,
            height: 2,
          ),
          Expanded(
              flex: 7,
              child: Container(
                child:ListView.separated(
                  separatorBuilder:(context,index){
                    return Divider(color:ThemData.primryColor,thickness: 2,);
                  },
                  itemCount: suraNames.length,
                    itemBuilder: (context ,index){
                  return suraName(suraNames[index]);
                }) ,

              )),
        ],
      ),
    );
  }
}
