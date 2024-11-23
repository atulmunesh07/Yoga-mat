import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogamat/screens/surya_namaskar_detail_page/surya_asan_page.dart';

import '../bottam_bar.dart';

class SuryaDetailPage extends StatefulWidget {
  const SuryaDetailPage({super.key});

  @override
  State<SuryaDetailPage> createState() => _SuryaDetailPageState();
}

class _SuryaDetailPageState extends State<SuryaDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  Column(
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
                child: Text("Surya Namaskar",style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 20),)),
            SizedBox(height: 15,),
            Container(
                margin: EdgeInsets.only(left: 15),
                child: Text("A disease-free body, a violence-free society,\n a confusion-free mind, an inhibition-free intellect,\n a trauma-free memory, a sorrow-free soul, and a quiver-free\n breath is the impact that yoga can make in your life."
                  ,style: GoogleFonts.poppins(),)),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Benefits",style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                  Text("# Great Cardiovascular",style: GoogleFonts.poppins(),),
                  Text("# Improves Blood circulation",style: GoogleFonts.poppins(),),
                  Text("# Calma the mind",style: GoogleFonts.poppins(),),


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
                  Text("# High Blood Pressure",style: GoogleFonts.poppins(),),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SuryaAsanPage()));
                      },
                      child: Text("Start Now",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),)
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );;
  }
}
