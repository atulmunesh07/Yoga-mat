import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogamat/added_screens/music_list_screen.dart';
import 'package:yogamat/wigths/colors.dart';
import 'package:yogamat/wigths/music_modeal.dart';
import 'package:yogamat/wigths/neumorphism_btn.dart';
import 'package:iconsax/iconsax.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    int currentItemPlaying =0;
    double currentPlayback =0;
    String formatePlayerTime(double time){
      final min =  time ~/60;
      final sec = time %60;
      return "$min:${sec.toStringAsFixed(0).padRight(2,"0")}";
    }
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.bgColors,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NeumorphismBtn(
                    size: 60,child:
                    Icon(
                      musicList[currentItemPlaying].isFav?Icons.favorite:
                      Iconsax.heart,
                    color: AppColor.secondaryTextColor,)

                    ,),
                  Text("Playing now ".toUpperCase(),style: GoogleFonts.poppins(color: AppColor.secondaryTextColor,),),
                    NeumorphismBtn(size: 60,child:
                      const Icon(Iconsax.menu_board5,
                         color: AppColor.secondaryTextColor,),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MusicListScreen(
                        selectedindex: currentItemPlaying,
                      )
                     ),);

                    },
                    ),
                ],
              ),
              NeumorphismBtn(
                size: size.width*0.8,
                distance: 20,
                pading: 10,
                imageUrl: musicList[currentItemPlaying].imageurl,
                ),
              Text(musicList[currentItemPlaying].name,style: GoogleFonts.poppins(
                  color:AppColor.secondaryTextColor,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),),
              Text(musicList[currentItemPlaying].artist,style: GoogleFonts.poppins(
                  color:AppColor.secondaryTextColor,
                  fontSize: 14,
              ),),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(formatePlayerTime(currentPlayback),style: GoogleFonts.poppins(
                          color:AppColor.secondaryTextColor,
                          fontSize: 14,
                        ),),
                        Text(formatePlayerTime(musicList[currentItemPlaying].length),style: GoogleFonts.poppins(
                          color:AppColor.secondaryTextColor,
                          fontSize: 14,
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
              Slider(
                value: currentPlayback,
                  max:musicList[currentItemPlaying].length ,
                  thumbColor: AppColor.blue,
                  activeColor: AppColor.blue,
                  inactiveColor: AppColor.bgDark,
                  onChanged:(value){
                    setState(() {
                      currentPlayback = value;

                    });
                  }
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NeumorphismBtn(size: 80,
                    onPressed: (){
                      if(currentItemPlaying>0) {
                        setState(() {
                          currentItemPlaying--;
                        });
                      }
                    },

                    child:
                  const Icon(Icons.skip_previous_rounded,
                    color: AppColor.secondaryTextColor,size: 40,)

                    ,),
                  const NeumorphismBtn(size: 80,
                    colors: [AppColor.blueTopDark,
                      AppColor.blue],
                    child:
                  Icon(Icons.pause_circle_rounded,
                    color: AppColor.secondaryTextColor,size: 40,)

                    ,),
                  NeumorphismBtn(
                    onPressed: (){
                      if(currentItemPlaying<musicList.length -1) {
                        setState(() {
                          currentItemPlaying++;
                        });
                      }
                    },
                    size: 80,child:
                  const Icon(Icons.skip_next_rounded,
                    color: AppColor.secondaryTextColor,size: 40,)

                    ,),

                ],
              )
            ],

          ),
        ),
      )

    );
  }
}
