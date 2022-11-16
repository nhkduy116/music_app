// ignore_for_file: prefer_const_constructors, import_of_legacy_library_into_null_safe, unused_import, unnecessary_new, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_app/components/signup_page.dart';
import 'package:music_app/constants/color_constants.dart';
import 'components/login_page.dart';
import 'layout_element/box_music.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'app_img.dart';
import 'components/favorite_page.dart';

void main() {
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
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
      theme: ThemeData(primaryColor: ColorPalette.primaryColor),
      color: ColorPalette.primaryColor,
      initialRoute: '/',
      routes: {
        // '/':(context) => MyHomePage(),
        '/login_page': ((context) => LoginPage()),
        '/signup_page': ((context) => SignupPage()),
      },
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomePage(),
          FavoritePage(),
          Container(
            color: ColorPalette.primaryColor,
          ),
          Container(
            color: ColorPalette.primaryColor,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavyBar(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          backgroundColor: ColorPalette.primaryColor,
          selectedIndex: _currentIndex,
          showElevation: true,
          itemCornerRadius: 24,
          curve: Curves.linear,
          onItemSelected: (index) => setState(() => _currentIndex = index),
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
                activeColor: ColorPalette.lightblue),
            BottomNavyBarItem(
                icon: Icon(Icons.favorite_border),
                title: Text("Favorite"),
                activeColor: ColorPalette.lightblue),
            BottomNavyBarItem(
                icon: Icon(Icons.search),
                title: Text("Search"),
                activeColor: ColorPalette.lightblue),
            BottomNavyBarItem(
                icon: Icon(Icons.person),
                title: Text("Profile"),
                activeColor: ColorPalette.lightblue),
          ]),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<SliderDrawerState> _key = GlobalKey<SliderDrawerState>();
  late String title;

  @override
  void initState() {
    title = "Home";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliderDrawer(
      appBar: SliderAppBar(
        drawerIconColor: Colors.white,
        appBarColor: ColorPalette.primaryColor,
        title: Text(""),
      ),
      key: _key,
      sliderOpenSize: 300,
      slider: _SliderView(
        onItemClick: (title) {
          _key.currentState!.closeSlider();
          setState(() {
            this.title = title;
          });
        },
      ),
      child: PageCenter(),
    );
  }
}

class _SliderView extends StatelessWidget {
  final Function(String)? onItemClick;
  final String _un = "Duy Nguyen";
  final String _pw = "duynguyen11062002@gmail.com";

  const _SliderView({Key? key, this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            ColorPalette.primaryColor,
            ColorPalette.greyBold,
          ],
        )),
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  ColorPalette.primaryColor,
                  ColorPalette.greyBold,
                ],
              )),
              accountName: Text(_un),
              accountEmail: Text(_pw),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(Images.img_account),
              ),
            ),
            ListTile(
              title: Text(
                'Library',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.library_music,
                color: Colors.blue[100],
              ),
            ),
            ListTile(
              title: Text(
                'Radio',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.headset,
                color: Colors.blue[100],
              ),
            ),
            ListTile(
              title: Text(
                'Music',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.music_note,
                color: Colors.blue[100],
              ),
            ),
            ListTile(
              title: Text(
                'List Music',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.queue_music,
                color: Colors.blue[100],
              ),
            ),
            ListTile(
              title: Text(
                'Search',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.search,
                color: Colors.blue[100],
              ),
            ),
            ListTile(
              title: Text(
                'Sign out',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.logout,
                color: Colors.blue[100],
              ),
              onTap: () {
                Navigator.pushNamed(context, '/login_page');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PageCenter extends StatelessWidget {
  const PageCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
        color: ColorPalette.primaryColor,
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // imageSlider(context),
                Container(
                  child: Column(
                    children: List.generate(albMusic.length, (index) {
                      return Center(
                        child: BoxMusicss(albMusic: albMusic[index]),
                      );
                    }),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

// Widget ListTile()

Swiper imageSlider(context) {
  return new Swiper(
    autoplay: true,
    itemBuilder: (BuildContext context, int index) {
      return new Image.asset(
        'assets/butter.png',
        fit: BoxFit.fitHeight,
      );
    },
    itemCount: 10,
    viewportFraction: 0.7,
    scale: 0.8,
  );
}

extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
