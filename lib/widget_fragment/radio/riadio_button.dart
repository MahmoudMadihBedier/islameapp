

import 'package:flutter/material.dart';
import 'package:islameapp/theming/my_them_data.dart';
import 'package:url_launcher/url_launcher.dart';

class PlayButton extends StatefulWidget {
  const PlayButton({Key? key}) : super(key: key);

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  bool isPlaying = false; // Track the button state (playing or paused)
  final String soundURL ='https://backup.qurango.net/radio/mohammed_siddiq_alminshawi_mojawwad'; // Radio URL
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        setState(() {
          isPlaying = !isPlaying; // Toggle the state on button press
        });
        if(isPlaying){
          if(!await canLaunch(soundURL)){
            await launch(soundURL);

        }else{
            throw'cant run URL';
          }
        }
      },
      child: Icon(
        isPlaying ? Icons.pause : Icons.play_arrow, // Choose icon based on state
        size: 50.0,
        color: Colors.white,
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(150.0, 80.0),
        backgroundColor: ThemData.primryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60.0),
        ),
      ),
    );
  }
}
