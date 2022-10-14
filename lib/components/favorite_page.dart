import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_app/constants/color_constants.dart';


class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      color: ColorPalette.primaryColor,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 15,
          right: 15
        ),
        child: Container(
          color: ColorPalette.primaryColor,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(FontAwesomeIcons.music, color: Colors.red,),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10
                          ),
                          child: Text("Music", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white)),
                        ),
                      ],
                    ),
                    Icon(FontAwesomeIcons.search, color: Colors.white,)
                  ],
                ),
                // NavigationBar(destinations: destinations)
              ],
            ),
          ),
        ),
      ),
    );
  }
}