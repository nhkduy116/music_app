// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, unused_local_variable, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_declarations, non_constant_identifier_names, unused_import, sort_child_properties_last, depend_on_referenced_packages, import_of_legacy_library_into_null_safe, unused_element

import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'dart:ui';

// import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/fontelico_icons.dart';
// import 'package:just_audio/just_audio.dart';
import 'package:line_icons/line_icons.dart';
import 'package:music_app/constants/app_img.dart';
import 'package:music_app/constants/color_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:audioplayers/audioplayers.dart';

class PlayMusicPage extends StatefulWidget {
  final String imgMusic;
  final String nameOfSong;
  final String singer;
  final urlMusic;
  const PlayMusicPage(
      {Key? key,
      required this.imgMusic,
      required this.nameOfSong,
      required this.singer,
      required this.urlMusic})
      : super(key: key);

  @override
  State<PlayMusicPage> createState() => _PlayMusicPageState();
}

class _PlayMusicPageState extends State<PlayMusicPage>
    with SingleTickerProviderStateMixin {
  //Animation for image of music
  late Animation<double> animation;
  late AnimationController controller;
  bool isPlay = false;
  bool isLoading = false;

  //Properties for play audio of music
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  bool checkShare = false;
  bool checkList = false;
  bool checkHeart = false;
  bool checkDownload = false;

  Color shareColor = ColorPalette.whiteIcon;
  Color listColor = ColorPalette.whiteIcon;
  Color heartColor = ColorPalette.whiteIcon;
  Color downloadColor = ColorPalette.whiteIcon;

  IconData listIcon = Icons.playlist_add; 
  IconData playIcon = Entypo.play;
  IconData heartIcon = Entypo.heart_empty;

  late Timer _timer;

  @override
  void initState() {
    super.initState();

    setAudio();

    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 20000));

    controller.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        controller.repeat();
      }
    });

    setRotation(360);

    //Listen to states: playing, paused, stoped
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    //Listen to audio duration
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    //Listen to audio positon
    audioPlayer.onPositionChanged.listen((newPosition) {
      position = newPosition;
    });
  }

  Future setAudio() async {
    //Repeat song when completed
    audioPlayer.setReleaseMode(ReleaseMode.loop);

    //load audio from assets 
    final player = AudioCache(prefix: 'assets/musics/');
    final url = await player.load(widget.urlMusic);
    // audioPlayer.setSourceAsset(url.path);
    // audioPlayer.setSourceUrl(url.path);
    audioPlayer.setSourceDeviceFile(url.path);
  }

  @override
  void dispose() {
    controller.dispose();
    // audioPlayer.dispose();
    super.dispose();
  }

  void setRotation(int degrees) {
    final angle = degrees * pi / 180;
    animation = Tween<double>(begin: 0, end: angle).animate(controller);
  }

  String fomatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorPalette.primaryColor,
        leading: GestureDetector(
          onTap: () async {
            await audioPlayer.pause();
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        width: width,
        height: height,
        color: ColorPalette.primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: AnimatedBuilder(
                animation: animation,
                child: CircleAvatar(
                  radius: 150,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(widget.imgMusic),
                ),
                builder: (context, child) => Transform.rotate(
                  angle: animation.value,
                  child: child,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              widget.nameOfSong,
              style: TextStyle(color: ColorPalette.txtNameOfSong, fontSize: 32),
            ),
            Text(
              widget.singer,
              style: TextStyle(color: ColorPalette.txtSinger, fontSize: 20),
            ),
            Container(
              width: width,
              height: height * 0.07,
              // padding: EdgeInsets.all(15),
              // color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  OutlinedButton(
                    onPressed: () {
                      checkShare == false
                          ? shareColor = ColorPalette.checkIcon
                          : shareColor = ColorPalette.whiteIcon;
                      setState(() {
                        checkShare = !checkShare;
                      });
                    },
                    child: Container(
                      child: Icon(
                        Icons.share,
                        color: shareColor,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                        backgroundColor: ColorPalette.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      checkList == false
                          ? listColor = ColorPalette.checkIcon
                          : listColor = ColorPalette.whiteIcon;
                      checkList == false
                          ? listIcon = Icons.playlist_add_check
                          : listIcon = Icons.playlist_add;
                      setState(() {
                        checkList = !checkList;
                      });
                    },
                    child: Container(
                      child: Icon(
                        listIcon,
                        color: listColor,
                        size: 31,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                        backgroundColor: ColorPalette.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      checkHeart == false
                          ? heartColor = ColorPalette.checkIcon
                          : heartColor = ColorPalette.whiteIcon;
                      checkHeart == false
                          ? heartIcon = Entypo.heart
                          : heartIcon = Entypo.heart_empty;
                      setState(() {
                        checkHeart = !checkHeart;
                      });
                      if (checkHeart == true) {
                        showDialog(
                            context: context,
                            builder: (BuildContext builderContext) {
                              _timer = Timer(Duration(seconds: 1), () {
                                Navigator.of(context).pop();
                              });

                              return AlertDialog(
                                backgroundColor: ColorPalette.primaryIcon,
                                content: Text('Add this song to Your Favorite'),
                              );
                            }).then((val) {
                          if (_timer.isActive) {
                            _timer.cancel();
                          }
                        });
                      }
                    },
                    child: Container(
                      child: FaIcon(
                        heartIcon,
                        color: heartColor,
                        size: 26,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                        backgroundColor: ColorPalette.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      checkDownload == false
                          ? downloadColor = ColorPalette.checkIcon
                          : downloadColor = ColorPalette.whiteIcon;
                      setState(() {
                        checkDownload = !checkDownload;
                      });
                    },
                    child: Container(
                      child: Icon(
                        LineIcons.download,
                        color: downloadColor,
                        size: 26,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                        backgroundColor: ColorPalette.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ],
              ),
            ),
            Slider(
                activeColor: ColorPalette.primaryIcon,
                inactiveColor: ColorPalette.inavtiveSliderMusic,
                min: 0,
                max: duration.inSeconds.toDouble(),
                value: position.inSeconds.toDouble(),
                onChanged: (value) async {
                  final position = Duration(seconds: value.toInt());  
                  await audioPlayer.seek(position);

                  //Optional: play audio if paused
                  await audioPlayer.resume();
                }),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    fomatTime(position),
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    fomatTime(duration - position),
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    child: Icon(
                      Entypo.shuffle,
                      color: ColorPalette.whiteIcon,
                      size: 21,
                    ),
                  ),
                  GestureDetector(
                    child: Icon(
                      Icons.skip_previous,
                      color: ColorPalette.whiteIcon,
                      size: 21,
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (isPlay == false) {
                        if (isLoading == false) {
                          controller.forward(from: 0);
                          isLoading = true;
                          setState(() {
                            playIcon = Entypo.pause;
                          });
                          isPlay = !isPlay;
                        } else {
                          controller.forward(from: controller.value);
                          setState(() {
                            playIcon = Entypo.pause;
                          });
                          isPlay = !isPlay;
                        }
                        // playIcon = Entypo.play;
                        await audioPlayer.resume();
                      } else {
                        await audioPlayer.pause();
                        controller.stop();
                        setState(() {
                          playIcon = Entypo.play;
                        });
                        isPlay = !isPlay;
                      }
                    },
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: ColorPalette.primaryIcon,
                      child: Icon(
                        playIcon,
                        color: ColorPalette.primaryColor,
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Icon(
                      Icons.skip_next,
                      color: ColorPalette.whiteIcon,
                      size: 21,
                    ),
                  ),
                  GestureDetector(
                    child: Icon(
                      Fontelico.spin3,
                      color: ColorPalette.whiteIcon,
                      size: 19,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.005,
            )
          ],
        ),
      ),
    );
  }
}
