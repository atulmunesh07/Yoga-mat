import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogamat/screens/detail_screen_bord/detail_page_one.dart';
import 'package:yogamat/screens/ekam_asan/ekam_detail_page.dart';
import 'package:yogamat/screens/surya_namaskar_detail_page/surya_detail_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.cyan,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: const Image(image: NetworkImage("https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExb2x2MGc0Z253MXl1eDR3Y21lOWduYTVwMnQ3N2VvcHlmbzVzajNkbSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/3og0IIB0CrEPomHBYs/giphy.webp",),fit: BoxFit.cover,),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40,left: 325),
                      child: const Icon(Icons.notifications,size: 30,color: Colors.black,)),
                  Container(
                    margin: const EdgeInsets.only(top: 190, left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Welcom, ",style: GoogleFonts.poppins(color: Colors.white,fontSize: 20 ,fontWeight: FontWeight.bold),),
                            Text("Atul Munesh",style: GoogleFonts.poppins(color: Colors.white,fontSize: 20),),
                          ],
                        ),
                        Text("Get started!",style: GoogleFonts.poppins(color: Colors.white,fontSize: 20),),
                      ],
                    ),
                  )

                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text("What do you wannt to do today ?",style: GoogleFonts.poppins(color: Colors.black,fontSize: 16)),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),

                    ),
                    child: Center(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 15,
                                  width: 15,

                                  child: Image.asset("asset/img_3.png",color: Colors.white,)),
                            ),
                            SizedBox(width: 3,),

                            Text("Breathe",style: GoogleFonts.poppins(color: Colors.white,fontSize: 16)),
                          ],
                        )),
                  ),
                  Container(
                    height: 40,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),

                    ),
                    child: Center(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 25,
                                  width: 25,

                                  child: Image.asset("asset/stretch.png",color: Colors.white,)),
                            ),

                            Text("Stretch",style: GoogleFonts.poppins(color: Colors.white,fontSize: 16)),
                          ],
                        )),
                  ),
                  Container(
                    height: 40,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),

                    ),
                    child: Center(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                 height: 20,
                                 width: 20,

                                 child: Image.asset("asset/img_4.png",color: Colors.white,)),
                            ),

                            Text("Meditate",style: GoogleFonts.poppins(color: Colors.white,fontSize: 14)),
                          ],
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 190,
                  width: MediaQuery.of(context).size.width,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text("Asana",style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 19,color: Colors.black),),
                      ),
                      SizedBox(height: 10,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(

                          children: [
                            Container(
                              height: 150,
                              width: 200,

                              decoration: BoxDecoration(
                                  color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(

                                children: [
                                  InkWell(
                                    onTap:(){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPageOne()));
                                    },
                                    child: Container(
                                      height: 100,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage("asset/img_5.png"),fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                                      ),
                                    ),
                                  ),
                                  Text("Asana Meditation",style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                                  SizedBox(height: 4,),
                                  Text("15 mins | Beginner",style: GoogleFonts.poppins(color: Colors.black),)
                                ],
                              ),

                            ),
                           SizedBox(width: 20,),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>EkamDetailPage()));
                              },
                              child: Container(
                                height: 150,
                                width: 200,

                                decoration: BoxDecoration(
                                    color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Column(

                                  children: [
                                    Container(
                                      height: 100,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage("asset/img_6.png"),fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                                      ),
                                    ),
                                    Text("Ekam",style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                                    SizedBox(height: 4,),
                                    Text("20 mins | Beginner",style: GoogleFonts.poppins(color: Colors.black),)
                                  ],
                                ),

                              ),
                            ),
                            SizedBox(width: 20,),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SuryaDetailPage()));
                              },
                              child: Container(
                                height: 150,
                                width: 200,

                                decoration: BoxDecoration(
                                    color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Column(

                                  children: [
                                    Container(
                                      height: 100,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage("asset/img_7.png"),fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                                      ),
                                    ),
                                    Text("Surya Namaskar",style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                                    SizedBox(height: 4,),
                                    Text("15 mins | Beginner",style: GoogleFonts.poppins(color: Colors.black),)
                                  ],
                                ),

                              ),
                            ),
                            SizedBox(width: 20,),
                            Container(
                              height: 150,
                              width: 200,

                              decoration: BoxDecoration(
                                  color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(

                                children: [
                                  Container(
                                    height: 100,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("asset/img_8.png"),fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                                    ),
                                  ),
                                  Text("Yoga Nidra",style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                                  SizedBox(height: 4,),
                                  Text("10 mins | Beginner",style: GoogleFonts.poppins(color: Colors.black),)
                                ],
                              ),

                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Collections",style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                      SizedBox(height: 10,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(

                          children: [
                            Container(
                              height: 170,
                              width: 140,
                             decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                               color: Colors.white,
                               image: DecorationImage(image: AssetImage("asset/img_9.png"),fit: BoxFit.cover)
                             ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 70.0),
                                child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Weight\nManagement", style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold),)
                                  ],

                                ),
                              )  ,
                              ),
                            SizedBox(width: 9,),
                            Container(
                              height: 170,
                              width: 140,
                             decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                               color: Colors.white,
                               image: DecorationImage(image: AssetImage("asset/img_11.png"),fit: BoxFit.cover)
                             ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 70.0),
                                child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Stress\nManagement", style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold),)
                                  ],

                                ),
                              )  ,
                              ),
                            SizedBox(width: 9,),
                            Container(
                              height: 170,
                              width: 140,
                             decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                               color: Colors.white,
                               image: DecorationImage(image: AssetImage("asset/img_12.png"),fit: BoxFit.cover)
                             ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 70.0),
                                child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Diabetes\nManagement", style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold),)
                                  ],

                                ),
                              )  ,
                              ),



                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
