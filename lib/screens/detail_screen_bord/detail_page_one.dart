import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogamat/screens/detail_screen_bord/detail_screen.dart';
import 'package:yogamat/wigths/colors.dart';

import '../bottam_bar.dart';

class DetailPageOne extends StatefulWidget {
  const DetailPageOne({super.key});

  @override
  State<DetailPageOne> createState() => _DetailPageOneState();
}

class _DetailPageOneState extends State<DetailPageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgDark,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FluidNavBarDemo()));
              },
              child: Container(
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.arrow_back_ios,color: Colors.black,size: 15,),
                    Text("Back",style: GoogleFonts.poppins(color: Colors.black),)
                  ],
                ),

              ),
            ),
            SizedBox(height: 40,),
            Container(
                margin: EdgeInsets.only(left: 15),
                child: Text("Asana Meditation",style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 20),)),
            SizedBox(height: 15,),
            Container(
                margin: EdgeInsets.only(left: 15),
                child: Text("The Asana Meditation program has been\n curated to restore your blood pressur leaving\n a postive impacat on your body and mind ."
                ,style: GoogleFonts.poppins(),)),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Benefits",style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                  Text("# Improves bloood circulation",style: GoogleFonts.poppins(),),
                  Text("# Stretches the legs",style: GoogleFonts.poppins(),),
                  Text("# Reduces stress and improves sleep",style: GoogleFonts.poppins(),),

                  
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Caution",style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                  Text("# High Blood pressure",style: GoogleFonts.poppins(),),
                  Text("# General Weakness",style: GoogleFonts.poppins(),),



                ],
              ),
            ),
            SizedBox(height: 50,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.cyan
                  ),
                  child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBordPage()));
                      },
                      child: Text("Start Now",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),)
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
