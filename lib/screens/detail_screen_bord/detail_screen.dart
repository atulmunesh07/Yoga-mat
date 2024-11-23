import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogamat/screens/detail_screen_bord/detail_page_one.dart';
import 'package:yogamat/screens/detail_screen_bord/timare.dart';

import '../../wigths/detail_screen_modeal/detail_modal_one.dart';


class OnBordPage extends StatefulWidget {
  const OnBordPage({super.key});

  @override
  State<OnBordPage> createState() => _OnBordPageState();
}

class _OnBordPageState extends State<OnBordPage> {
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
                itemCount: content.length,
                onPageChanged: (int index){
                  setState(() {
                    currentIndex=index;
                  });
                },
                itemBuilder: (_,i) {
                  return Padding(padding: EdgeInsets.all(20),
                    child:  Column(
                      children: [
                        Image.network(content[i].image,height: 300,width: MediaQuery.of(context).size.width,),
                        SizedBox(height: 3,),
                        Text(content[i].title,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 18),),
                        Text(content[i].description,style:  GoogleFonts.poppins()),
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

              children: List.generate(content.length, (index) =>
                  buildDot(index,context),

              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              if(currentIndex== content.length-1){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DetailPageOne()) );
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
                    currentIndex== content.length-1? "Start Next":

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
