// ignore_for_file: unnecessary_const, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, unused_field, unused_element, unused_local_variable, empty_statements, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, avoid_print, must_call_super

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_app/constants/app_img.dart';
import '../classes/classes.dart';
import '../components/play_music_page.dart';
import '../constants/color_constants.dart';
import 'package:music_app/main.dart';

const List<AlbMusic> albMusic = const <AlbMusic>[
  const AlbMusic(
      title: 'Proof',
      img: Images.alb_proof,
      singer: '방탄소년단',
      colorStart: ColorPalette.black,
      colorEnd: ColorPalette.red,
      url: 'proof.mp3'),
  const AlbMusic(
      title: 'Butter',
      img: Images.alb_butter,
      singer: '방탄소년단',
      colorStart: ColorPalette.yellow,
      colorEnd: ColorPalette.orange,
      url: 'butter.mp3'),
  const AlbMusic(
      title: 'Love Yourself: Answer',
      img: Images.alb_ly_answer,
      singer: '방탄소년단',
      colorStart: ColorPalette.lightBlueLY,
      colorEnd: ColorPalette.mint,
      url: 'answerLY.mp3'),
  const AlbMusic(
      title: 'Love Yourself: Tear',
      img: Images.alb_ly_tear,
      singer: '방탄소년단',
      colorStart: ColorPalette.lightBlackLY,
      colorEnd: ColorPalette.red,
      url: 'lovemaze.mp3'),
  const AlbMusic(
      title: 'Persona',
      img: Images.alb_persona,
      singer: '방탄소년단',
      colorStart: ColorPalette.lightPinkPersona,
      colorEnd: ColorPalette.mint,
      url: 'persona.mp3'),
  const AlbMusic(
      title: 'Wing',
      img: Images.alb_wing,
      singer: '방탄소년단',
      colorStart: ColorPalette.lightWhiteWingStart,
      colorEnd: ColorPalette.lightBlueLY,
      url: 'wing.mp3'),
  const AlbMusic(
      title: 'We are Bullet Proof',
      img: Images.alb_bullet,
      singer: '방탄소년단',
      colorStart: ColorPalette.lightBlackBulletStart,
      colorEnd: Colors.orange,
      url: 'bulletproof.mp3'),
  const AlbMusic(
      title: 'BE',
      img: Images.alb_be,
      singer: '방탄소년단',
      colorStart: ColorPalette.lightWhiteWingStart,
      colorEnd: ColorPalette.lightPinkPersona,
      url: 'be.mp3'),
];

class BoxMusicss extends StatefulWidget {
  final AlbMusic albMusic;
  const BoxMusicss({
    Key? key,
    required this.albMusic,
  }) : super(key: key);

  @override
  State<BoxMusicss> createState() => _BoxMusicssState();
}

class _BoxMusicssState extends State<BoxMusicss> {
  bool _color = false;
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  IconData getData(_color) {
    return (_color ? Icons.pause : Icons.play_arrow);
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PlayMusicPage(
                    imgMusic: widget.albMusic.img,
                    nameOfSong: widget.albMusic.title,
                    singer: widget.albMusic.singer,
                    urlMusic: widget.albMusic.url,)));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        width: width,
        height: height * 0.123,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.albMusic.colorStart
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              // width: height*0.123,
              child: Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                  child: Image(
                    image: AssetImage(widget.albMusic.img),
                    fit: BoxFit.fill,
                    width: width,
                    height: height,
                  ),
                ),
              ),
            ),
            Container(
              child: Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          widget.albMusic.colorEnd,
                          widget.albMusic.colorStart
                        ],
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        widget.albMusic.title,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: <Widget>[
                      //     GestureDetector(
                      //       onTap: (() {}),
                      //       child: Icon(
                      //         Icons.skip_previous,
                      //         color: Colors.white,
                      //         size: 35,
                      //       ),
                      //     ),
                      //     GestureDetector(
                      //       onTap: (() {
                      //         setState(() {
                      //           _color = !_color;
                      //         });
                      //       }),
                      //       child: Icon(
                      //         getData(_color),
                      //         color: Colors.white,
                      //         size: 35,
                      //       ),
                      //     ),
                      //     GestureDetector(
                      //       onTap: (() {}),
                      //       child: Icon(
                      //         Icons.skip_next,
                      //         color: Colors.white,
                      //         size: 35,
                      //       ),
                      //     ),
                      //   ],
                      // )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
