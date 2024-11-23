import 'package:flutter/material.dart';

class MusicPaly{
  final String name;
  final String imageurl;
  final String artist;
  late final bool isFav;
  final double length;

  MusicPaly( {
  required this.name, required this.length,
  required this.imageurl,
  required this.artist,
  required this.isFav,


});
}
List<MusicPaly> musicList = [
  MusicPaly(

      name: "Meditation Chant",
      imageurl: "asset/img_11.png",
      artist: "Flume ft.Vic Mensa",
      isFav: true,
      length: 130,

  ),
  MusicPaly(

      name: "Adagio",
      imageurl: "asset/img_13.png",
      artist: "Everness",
      isFav: true,
      length: 130,

  ),
  MusicPaly(

      name: "A Breeze of Happynesst",
      imageurl: "asset/img_6.png",
      artist: "Flume ft.Vic Mensa",
      isFav: true,
      length: 130,

  ),
  MusicPaly(

      name: "Atlantis",
      imageurl: "asset/img_5.png",
      artist: "Flume ft.Vic Mensa",
      isFav: true,
      length: 130,

  ),
  MusicPaly(

      name: "Beyond the Rainbow",
      imageurl: "asset/img_15.png",
      artist: "Flume ft.Vic Mensa",
      isFav: true,
      length: 130,

  ),
  MusicPaly(

      name: "Aurora",
      imageurl: "asset/img_14.png",
      artist: "Flume ft.Vic Mensa",
      isFav: true,
      length: 130,

  ),
];