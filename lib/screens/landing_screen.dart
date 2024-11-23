import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogamat/screens/bottam_bar.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("asset/img.png"),fit: BoxFit.cover)
        ),
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("World #1 AI Powered Youga Mat",style: GoogleFonts.aBeeZee(fontSize: 18,fontWeight: FontWeight.w400),),
              SizedBox(height: 8,),
              Text("Smart GEN 2+",style: GoogleFonts.podkova(fontSize: 30,fontWeight: FontWeight.bold,),),
              SizedBox(height: 200,),
              Text("Monitors your posture , balance,and movements \n,Provviding real-time feedback and personalize \ninsights to help you improve your yoga practice\n and overall wellness every day. "
              ,style: GoogleFonts.pacifico(fontWeight: FontWeight.w500,color: Colors.white),),
              SizedBox(height: 60,),
              
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30)
                ),
                child:TextButton(onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FluidNavBarDemo()));
                },
                    child: Text("Talk to an expert",style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15),)
                ) ,
              )
            ],
          ),
        ),
      ),
    );
  }
}
