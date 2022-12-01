// ignore_for_file: prefer_const_constructors, import_of_legacy_library_into_null_safe, unused_import, unnecessary_new, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:music_app/components/account_page.dart';
import 'package:music_app/components/radio_page.dart';
import 'package:music_app/components/search_page.dart';
import 'package:music_app/components/signup_page.dart';
import 'package:music_app/constants/color_constants.dart';
import 'components/home_page.dart';
import 'components/login_page.dart';
import 'layout_element/box_music.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'constants/app_img.dart';
import 'components/location_page.dart';

void main() {
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    // systemNavigationBarColor: ColorPalette.primaryColor,
    // statusBarColor: ColorPalette.primaryColor,
  ));
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // primaryColor: ColorPalette.primaryColor,
        brightness: Brightness.light
      ),
      color: ColorPalette.primaryColor,
      initialRoute: '/',
      routes: {
        // '/':(context) => MyHomePage(),
        '/login_page': ((context) => LoginPage()),
        '/signup_page': ((context) => SignupPage()),
        '/home_page': ((context) => MyHomePage()),
        '/favorite_page': ((context) => LocationPage()),
        '/radio_page': ((context) => RadioPage()),
        '/account_page': ((context) => AccountPage()),
        '/search_page': ((context) => SearchPage())
      },
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
