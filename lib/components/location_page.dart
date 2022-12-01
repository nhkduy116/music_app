// ignore_for_file: import_of_legacy_library_into_null_safe, unused_import, unused_local_variable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_app/constants/color_constants.dart';
import 'package:music_app/constants/app_img.dart';

import 'account_page.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorPalette.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorPalette.primaryColor,
        title: Text('Discover'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Container(
            width: width,
            height: height,
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 20,
              runSpacing: 20,
              children: <Widget>[
                GestureDetector(
                  child: Container(
                    width: width * 0.4,
                    height: width * 0.4,
                    child: boxRecentActivity(Images.radio1),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: width * 0.4,
                    height: width * 0.4,
                    child: boxRecentActivity(Images.radio2),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: width * 0.4,
                    height: width * 0.4,
                    child: boxRecentActivity(Images.radio3),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: width * 0.4,
                    height: width * 0.4,
                    child: boxRecentActivity(Images.radio4),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: width * 0.4,
                    height: width * 0.4,
                    child: boxRecentActivity(Images.radio5),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: width * 0.4,
                    height: width * 0.4,
                    child: boxRecentActivity(Images.radio6),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: width * 0.4,
                    height: width * 0.4,
                    child: boxRecentActivity(Images.radio3),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: width * 0.4,
                    height: width * 0.4,
                    child: boxRecentActivity(Images.radio4),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: width * 0.4,
                    height: width * 0.4,
                    child: boxRecentActivity(Images.radio5),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: width * 0.4,
                    height: width * 0.4,
                    child: boxRecentActivity(Images.radio6),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class Images {
//   final String img;
//   const Images({
//     required this.img
//   });
// }

List<String> imgs = [
  Images.radio1,
  Images.radio2,
  Images.radio3,
  Images.radio4,
  Images.radio5,
  Images.radio6,
  Images.radio7,
  Images.radio8,
];
