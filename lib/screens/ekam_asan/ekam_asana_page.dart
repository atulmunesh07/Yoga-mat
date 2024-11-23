import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogamat/screens/ekam_asan/ekam_detail_page.dart';
import 'package:yogamat/wigths/detail_screen_modeal/detail_modal_one.dart';

import '../detail_screen_bord/timare.dart';

class EkamAsanaPage extends StatefulWidget {
  const EkamAsanaPage({super.key});

  @override
  State<EkamAsanaPage> createState() => _EkamAsanaPageState();
}

class _EkamAsanaPageState extends State<EkamAsanaPage> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                itemCount: Ekam.length,
                onPageChanged: (int index){
                  setState(() {
                    currentIndex=index;
                  });
                },
                itemBuilder: (_,i) {
                  return Padding(padding: EdgeInsets.all(20),
                    child:  Column(
                      children: [
                        Image.network(Ekam[i].image,height: 300,width: MediaQuery.of(context).size.width,),
                        SizedBox(height: 3,),
                        Text(Ekam[i].title,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 18),),
                        Text(Ekam[i].description,style:  GoogleFonts.poppins()),
                        Container(
                          height: 200,
                          width: 200,

                          child: Timare(),

                        ),
                      ],
                    ),
                  );
                }
            ),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: List.generate(Ekam.length, (index) =>
                  buildDot(index,context),

              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              if(currentIndex== Ekam.length-1){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>EkamDetailPage()) );
              }
              _controller.nextPage(duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20)
              ),
              height: 60,
              margin: EdgeInsets.all(40),
              width: double.infinity,
              child: Center(
                  child: Text(
                    currentIndex== Ekam.length-1? "Start Next":

                    "Next",style: GoogleFonts.poppins(),)),

            ),
          )
        ],
      ),
    );
  }
  Container buildDot( int index,BuildContext context){

    return Container(
      height: 10,
      width: currentIndex == index?18:7,
      margin: EdgeInsets.only(right: 5 ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.black38
      ),

    );
  }
}
