import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  final Color? color;
  final Color backgroundColor;

  const ButtonWidget({Key? key,
    required this.text,
    required this.onClicked,
    required this.color
    ,  this.backgroundColor=Colors.black}):super(key: key);

  @override
  Widget build(BuildContext context) =>ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor:backgroundColor ,
     
    ),
      onPressed: onClicked,
      child: Text(text,style: GoogleFonts.poppins(fontSize: 20,color: color),)
  ) ;
}

