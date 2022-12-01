// ignore_for_file: unused_import, import_of_legacy_library_into_null_safe, deprecated_member_use, unnecessary_null_comparison

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:music_app/components/account_page.dart';
import '../constants/app_img.dart';
import '../constants/color_constants.dart';
import '../layout_element/box_music.dart';
import 'location_page.dart';
import 'radio_page.dart';

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
      backgroundColor: ColorPalette.primaryColor,
      // appBar: ,
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomePage(),
          LocationPage(),
          RadioPage(),
          AccountPage(),
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
                textAlign: TextAlign.center,
                icon: Icon(
                  Icons.home,
                  size: 24,
                ),
                title: Text("Home"),
                activeColor: ColorPalette.lightblue),
            BottomNavyBarItem(
                textAlign: TextAlign.center,
                icon: Icon(Entypo.location),
                title: Text("Location"),
                activeColor: ColorPalette.lightblue),
            BottomNavyBarItem(
                textAlign: TextAlign.center,
                icon: Icon(
                  Icons.radio,
                  size: 20,
                ),
                title: Text("Radio"),
                activeColor: ColorPalette.lightblue),
            BottomNavyBarItem(
                textAlign: TextAlign.center,
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
    return SafeArea(
        child: SliderDrawer(
      appBar: SliderAppBar(
        appBarPadding: EdgeInsets.only(top: 0, left: 10, right: 20),
        drawerIconColor: Colors.white,
        appBarColor: ColorPalette.primaryColor,
        title: Text(""),
        trailing: IconButton(
            onPressed: () {
              // showSearch(context: context, delegate: CustomerSearchDelegate());
              Navigator.pushNamed(context, '/search_page');
            },
            icon: const Icon(Icons.search, color: ColorPalette.whiteIcon, size: 28,),
          ),
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
    ));
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
                backgroundImage: AssetImage(Images.alb_ly_answer),
              ),
            ),
            ListTile(
              title: Text(
                'Library',
                style: TextStyle(color: ColorPalette.primaryText),
              ),
              leading: Icon(
                Icons.library_music,
                color: Colors.blue[100],
              ),
            ),
            ListTile(
              title: Text(
                'Radio',
                style: TextStyle(color: ColorPalette.primaryText),
              ),
              leading: Icon(
                Icons.headset,
                color: Colors.blue[100],
              ),
            ),
            ListTile(
              title: Text(
                'Music',
                style: TextStyle(color: ColorPalette.primaryText),
              ),
              leading: Icon(
                Icons.music_note,
                color: Colors.blue[100],
              ),
            ),
            ListTile(
              title: Text(
                'List Music',
                style: TextStyle(color: ColorPalette.primaryText),
              ),
              leading: Icon(
                Icons.queue_music,
                color: Colors.blue[100],
              ),
            ),
            ListTile(
              title: Text(
                'Search',
                style: TextStyle(color: ColorPalette.primaryText),
              ),
              leading: Icon(
                Icons.search,
                color: Colors.blue[100],
              ),
            ),
            ListTile(
              title: Text(
                'Sign out',
                style: TextStyle(color: ColorPalette.primaryText),
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

class CustomerSearchDelegate extends SearchDelegate {
  List<String> searchItems = [
    'Charlie Puth',
    'Ed Sheeran',
    'Billie Eilish',
    'Ariana Grande',
    'Taylor Swift',
    'Adele',
    'Justin Bieber',
    'Dua Lipa',
  ];

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      textSelectionColor: Colors.white,
      appBarTheme: const AppBarTheme(
        brightness: Brightness.light,
        color: ColorPalette.primaryColor,
        textTheme: const TextTheme(
          headline6: TextStyle( 
            color: Colors.white,
            fontSize: 30.0,
            // fontWeight: FontWeight.bold,
          )
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        focusColor: Colors.white,
        disabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        counterStyle: TextStyle(color: ColorPalette.primaryText),
        hintStyle: TextStyle(
          color: ColorPalette.primaryText,
          fontSize: 22,
        )
      )
    );   
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear)
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back)
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var results in searchItems) {
      if (results.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(results);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        ); 
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var results in searchItems) {
      if (results.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(results);
      }
    }
    return Container(
      color: ColorPalette.primaryColor,
      child: ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result, style: TextStyle(color: ColorPalette.primaryText),),
            trailing: GestureDetector(
              child: Icon(Entypo.cancel, color: ColorPalette.whiteIcon,),
              onTap: () {
               
              },
            ),
            onTap: () {
              query = result;
            },
          ); 
        },
      ),
    );
  }
}