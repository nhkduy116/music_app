// ignore_for_file: unnecessary_const, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, unused_field, unused_element, unused_local_variable, empty_statements, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, avoid_print, must_call_super

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_app/app_img.dart';
import '../components/play_music_page.dart';
import '../constants/color_constants.dart';
import 'package:music_app/main.dart';

class AlbMusic {
  final String title;
  final String img;
  final String singer;
  final Color colorStart;
  final Color colorEnd;
  const AlbMusic(
      {required this.title,
      required this.img,
      required this.singer,
      required this.colorStart,
      required this.colorEnd});
}

const List<AlbMusic> albMusic = const <AlbMusic>[
  const AlbMusic(
      title: 'Proof',
      img: Images.alb_proof,
      singer: 'Bangtan',
      colorStart: ColorPalette.black,
      colorEnd: ColorPalette.red),
  const AlbMusic(
      title: 'Butter',
      img: Images.alb_butter,
      singer: 'Bangtan',
      colorStart: ColorPalette.yellow,
      colorEnd: ColorPalette.orange),
  const AlbMusic(
      title: 'Love Yourself: Answer',
      img: Images.alb_ly_answer,
      singer: 'Bangtan',
      colorStart: ColorPalette.lightBlueLY,
      colorEnd: ColorPalette.mint),
  const AlbMusic(
      title: 'Love Yourself: Tear',
      img: Images.alb_ly_tear,
      singer: 'Bangtan',
      colorStart: ColorPalette.lightBlackLY,
      colorEnd: ColorPalette.red),
  const AlbMusic(
      title: 'Persona',
      img: Images.alb_persona,
      singer: 'Bangtan',
      colorStart: ColorPalette.lightPinkPersona,
      colorEnd: ColorPalette.mint),
  const AlbMusic(
      title: 'Wing',
      img: Images.alb_wing,
      singer: 'Bangtan',
      colorStart: ColorPalette.lightWhiteWingStart,
      colorEnd: ColorPalette.lightBlueLY),
  const AlbMusic(
      title: 'We are Bullet Proof',
      img: Images.alb_bullet,
      singer: 'Bangtan',
      colorStart: ColorPalette.lightBlackBulletStart,
      colorEnd: Colors.orange),
  const AlbMusic(
      title: 'BE',
      img: Images.alb_be,
      singer: 'Bangtan',
      colorStart: ColorPalette.lightWhiteWingStart,
      colorEnd: ColorPalette.lightPinkPersona),
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
                    singer: widget.albMusic.singer)));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
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
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8)),
                child: Image(
                  image: AssetImage(widget.albMusic.img),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (() {}),
                          child: Icon(
                            Icons.skip_previous,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              _color = !_color;
                            });
                          }),
                          child: Icon(
                            getData(_color),
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {}),
                          child: Icon(
                            Icons.skip_next,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
