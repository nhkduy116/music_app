// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:music_app/app_img.dart';
import '../constants/color_constants.dart';
import 'package:music_app/main.dart';

class AlbMusic {
  final String title;
  final String img;
  final Color colorStart;
  final Color colorEnd;
  const AlbMusic(
      {required this.title,
      required this.img,
      required this.colorStart,
      required this.colorEnd});
}

const List<AlbMusic> albMusic = const <AlbMusic>[
  const AlbMusic(
      title: 'Proof',
      img: Images.alb_proof,
      colorStart: ColorPalette.black,
      colorEnd: ColorPalette.red),
  const AlbMusic(
      title: 'Butter',
      img: Images.alb_butter,
      colorStart: ColorPalette.yellow,
      colorEnd: ColorPalette.orange),
  const AlbMusic(
      title: 'Love Yourself: Answer',
      img: Images.alb_ly_answer,
      colorStart: ColorPalette.lightBlueLY,
      colorEnd: ColorPalette.mint),
  const AlbMusic(
      title: 'Love Yourself: Tear',
      img: Images.alb_ly_tear,
      colorStart: ColorPalette.lightBlackLY,
      colorEnd: ColorPalette.red),
  const AlbMusic(
      title: 'Persona',
      img: Images.alb_persona,
      colorStart: ColorPalette.lightPinkPersona,
      colorEnd: ColorPalette.mint),
  const AlbMusic(
      title: 'Wing',
      img: Images.alb_wing,
      colorStart: ColorPalette.lightWhiteWingStart,
      colorEnd: ColorPalette.lightBlueLY),
  const AlbMusic(
      title: 'We are Bullet Proof',
      img: Images.alb_bullet,
      colorStart: ColorPalette.lightBlackBulletStart,
      colorEnd: Colors.orange),
  const AlbMusic(
      title: 'BE',
      img: Images.alb_be,
      colorStart: ColorPalette.lightWhiteWingStart,
      colorEnd: ColorPalette.lightPinkPersona),
];

class BoxMusic extends StatelessWidget {
  const BoxMusic({Key? key, required this.albMusic}) : super(key: key);
  final AlbMusic albMusic;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(
        bottom: 15
      ),
      width: width,
      height: height / 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Color.fromRGBO(254, 119, 156, 1)
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
              child: Image(
                image: AssetImage(albMusic.img),
                fit: BoxFit.fill,
                width: width,
                height: height,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [albMusic.colorEnd, albMusic.colorStart],
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    albMusic.title,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.skip_previous,
                        color: Colors.white,
                        size: 35,
                      ),
                      Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 35,
                      ),
                      Icon(
                        Icons.skip_next,
                        color: Colors.white,
                        size: 35,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}