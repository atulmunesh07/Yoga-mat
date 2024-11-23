
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogamat/wigths/bluetooth_screen.dart';
import 'package:yogamat/wigths/colors.dart';


class DeviceConnection extends StatefulWidget {
  const DeviceConnection({super.key});

  @override
  State<DeviceConnection> createState() => _DeviceConnectionState();
}

class _DeviceConnectionState extends State<DeviceConnection> {
  int curantindex = 0;

  List image = [
    'asset/img_1.png',
    'asset/img_16.png',
    'asset/img_17.png',
    'asset/img_18.png',
    'asset/img_19.png',
    'asset/img_20.png',
  ];

  get deviceWidth => 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgDark,
      body: Column(
        children: [

          Stack(

            children: [
              Padding(
                padding: const EdgeInsets.only(top:128.0,left: 20),
                child: Text("Add your AI mat\n with your mobile",style: GoogleFonts.poppins(fontWeight: FontWeight.bold,color: Colors.black),),
              ),
              Center(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const BluetoothScreen()));
                  },
                  child: Container(
                      margin: const EdgeInsets.only(left: 10,right: 50,top: 50),
                      height: 200,
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(image: NetworkImage("https://media.tenor.com/y9ZFt6kswM4AAAAj/bluetooth-logo.gif"),)
                      ),
                      //child: Center(child: Image.network("https://media.tenor.com/y9ZFt6kswM4AAAAj/bluetooth-logo.gif"))
                           ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Container(
            height: 400,
            width: 500,
            decoration: const BoxDecoration(

            ),
            child: CardSwiper(
              cardsCount: 4,
              cardBuilder: (context,index,x,y){
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Image(image: AssetImage(image[index],),fit: BoxFit.cover,)),
                        ),

                      ],
                    ),
                  ),
                );

              },
            ),

          )



        ],
      ),
    );
  }
}



