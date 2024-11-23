import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yogamat/wigths/colors.dart';
import '../wigths/music_modeal.dart';
import '../wigths/neumorphism_btn.dart';

class MusicListScreen extends StatefulWidget {
  final int selectedindex;

  const MusicListScreen({super.key,
    required this.selectedindex
  });

  @override
  State<MusicListScreen> createState() => _MusicListScreenState();
}

class _MusicListScreenState extends State<MusicListScreen> {
  late int  selectedIndex;
  @override

  void initState() {
    selectedIndex = widget.selectedindex;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.bgColors,
      body: SafeArea(child:
      Column(

        children: [
          const SizedBox(height: 20,),
          Text("Flume .Kai".toUpperCase(),style: GoogleFonts.poppins(color: AppColor.secondaryTextColor,
          fontSize: 14,
          ),),

          SizedBox(
            height: size.height*0.3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NeumorphismBtn(
                    onPressed: ()  async{
                     Navigator.pop(context,selectedIndex);
                    },
                    size: 60,child:
                    const Icon(Icons.arrow_back,
                    color: AppColor.secondaryTextColor,)

                    ,),
                  NeumorphismBtn(
                    size: size.width*0.4,
                    distance: 20,
                    pading: 8,
                    imageUrl: musicList[selectedIndex].imageurl,
                  ),
                  NeumorphismBtn(
                    size: 60,child:
                  Icon(
                    musicList[selectedIndex].isFav?Icons.favorite:
                    Iconsax.heart,
                    color: AppColor.secondaryTextColor,)
                    ,),
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                itemCount: musicList.length,
               itemBuilder: (context,index){
                 return InkWell(
                   onTap: (){
                     setState(() {
                       selectedIndex = index;
                     });
                   },
                   child: Container(
                     margin:const EdgeInsets.symmetric(vertical: 8,horizontal: 10) ,
                     padding:const EdgeInsets.symmetric(vertical: 20,horizontal: 15) ,
                     decoration:selectedIndex==index? BoxDecoration(
                       color: AppColor.secondaryTextColor.withOpacity(0.3),
                       borderRadius: BorderRadius.circular(15),

                     ):null,
                     child: Row(
                       children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(musicList[index].name,style: GoogleFonts.poppins(color: AppColor.secondaryTextColor,
                                     fontSize: 18 , fontWeight: FontWeight.bold)),
                              Text(musicList[index].artist,style: GoogleFonts.poppins(color:Colors.black,
                                  fontSize: 12 ,)),
                            ],
                          ),
                         const Spacer(),
                         selectedIndex ==index?
                         const NeumorphismBtn(size: 50,
                         colors: [
                           AppColor.blueTopDark,
                           AppColor.blue,
                         ],
                         child: Icon(
                           Icons.pause_circle_rounded,
                           color: Colors.white,
                         ),
                         ): const NeumorphismBtn(size: 50,
                           child: Icon(
                             Icons.play_arrow,
                             color: AppColor.secondaryTextColor,
                           ),)

                    ],

                                     ),
                                   ),
                 );
            },
          ))

        ],
      )
      ),
    );
  }
}
