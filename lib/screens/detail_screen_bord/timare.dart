import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogamat/wigths/detail_screen_modeal/button_widget.dart';


class Timare extends StatefulWidget {
  const Timare({super.key});


  @override
  State<Timare> createState() => _TimareState();
}

class _TimareState extends State<Timare> {
  static int maxSecond=60;
  int  seconds = maxSecond;
  Timer? timer;


  void startTime({bool reset=true}) {
    if(reset){
      resetTimer();
    }
    timer = Timer.periodic(const Duration(seconds: 1),(_){
      if(seconds>0){
        setState(()=>seconds--);
      }else{
        stopTimer(reset: false);
      }

    });
  }
  void resetTimer()=> setState(() =>seconds = maxSecond);

  void stopTimer({bool reset=true}){
    if(reset){
      resetTimer();
      timer?.cancel();
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Column(
            children: [
              buildTimer(),
              const SizedBox(height: 10,),
              buildButtons(),
            ],
          ),
              ]
          ),
        )
    );
  }
 Widget buildButtons() {
    final isRunning = timer == null? false: timer!.isActive;
    final isCompleted =seconds == maxSecond|| seconds==0;
    return isRunning || !isCompleted?
   isRunning? Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Center(
        child: ButtonWidget(
          text: "Cancle",
          onClicked: stopTimer,
          color: null,
        ),
      ),


    ],
  ):
    ButtonWidget(
    text: 'Star Time !',
    onClicked: () {
      startTime();
    },
    color: Colors.black,
    backgroundColor: Colors.white,
  ):ButtonWidget(
      text: 'Star Time !',
      onClicked: () {
        startTime();
      },
      color: Colors.black,
      backgroundColor: Colors.white,
    );
  }

  buildTimer() {
    return Text(
      '$seconds',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 30),
    );
  }


}
