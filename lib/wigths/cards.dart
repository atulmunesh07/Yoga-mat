import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cards extends StatefulWidget {
  final String image;
  final String text;
  const Cards({super.key, required this.image, required this.text});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        height: 40,
        width: 120,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(30),

        ),
        child: Center(
            child: Row(
              children: [
                Image.asset(widget.image,color: Colors.white,),

                Text(widget.text,style: GoogleFonts.poppins(color: Colors.white,fontSize: 16)),
              ],
            )),
      ),
    );
  }
}

class Cardimgaes extends StatefulWidget {
  const Cardimgaes({super.key});

  @override
  State<Cardimgaes> createState() => _CardimgaesState();
}

class _CardimgaesState extends State<Cardimgaes> {
  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        Cards(image: 'asset/stretch.png',text: "Stretch",),
        Cards(image: 'asset/stretch.png',text: "Stretch",),
        Cards(image: 'asset/stretch.png',text: "Stretch",),
      ],
    );
  }
}

