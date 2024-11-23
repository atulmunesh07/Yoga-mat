import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogamat/screens/bottam_bar.dart';
import 'package:yogamat/screens/ekam_asan/ekam_asana_page.dart';


class EkamDetailPage extends StatefulWidget {
  const EkamDetailPage({super.key});

  @override
  State<EkamDetailPage> createState() => _EkamDetailPageState();
}

class _EkamDetailPageState extends State<EkamDetailPage> {
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
                      const Icon(Icons.arrow_back_ios,color: Colors.black,size: 15,),
                      Text("Back",style: GoogleFonts.poppins(color: Colors.black),)
                    ],
                  ),

                ),
              ),
              const SizedBox(height: 40,),
              Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: Text("Ekam",style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 20),)),
              const SizedBox(height: 15,),
              Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: Text("A disease-free body, a violence-free society,\n a confusion-free mind, an inhibition-free intellect,\n a trauma-free memory, a sorrow-free soul, and a quiver-free\n breath is the impact that yoga can make in your life."
                    ,style: GoogleFonts.poppins(),)),
              const SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.only(left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Benefits",style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                    Text("# Great Cardiovascular exercise",style: GoogleFonts.poppins(),),
                    Text("# Improves Blood circulation",style: GoogleFonts.poppins(),),
                    Text("# Tones the Digestive system",style: GoogleFonts.poppins(),),


                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.only(left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Caution",style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                    Text("# High Blood Pressure",style: GoogleFonts.poppins(),),
                    Text("# General Weakness",style: GoogleFonts.poppins(),),



                  ],
                ),
              ),
              const SizedBox(height: 50,),

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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const EkamAsanaPage()));
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
