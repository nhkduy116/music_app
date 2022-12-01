// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:music_app/constants/app_img.dart';
import 'package:music_app/constants/color_constants.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorPalette.primaryColor,
      body: SafeArea(
        child: Container(
          width: width,
          height: height,
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          // color: Colors.yellow,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: width,
                  height: height*0.073,
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Account', style: TextStyle(fontSize: 42, color: ColorPalette.primaryText, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                SizedBox(
                  height: 27,
                ),
                Container(
                  width: width,
                  // color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      // ClipRRect(
                      //   borderRadius: BorderRadius.all(Radius.circular(10)),
                      //   child: Image.asset(
                      //     Images.img_account,
                      //     fit: BoxFit.cover,
                      //     width: width * 0.19,
                      //     height: width * 0.19
                      //   ),
                      // ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.only(right: 15),
                          child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Image.asset(
                            Images.img_account,
                            fit: BoxFit.cover,
                            width: width * 0.19,
                            height: width * 0.19
                          ),
                       ),
                        )
                      ),
                      // SizedBox(
                      //   width: 35,
                      // ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          padding: EdgeInsets.only(
                            left: 10,
                            top: 2,
                          ),
                        // width: width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Center(
                                  child: Column(
                                    children: <Widget>[
                                      Text('22', style: TextStyle(color: ColorPalette.primaryText),),
                                      Text('Playlist', style: TextStyle(color: ColorPalette.primaryText),)
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Column(
                                    children: <Widget>[
                                      Text('360 K', style: TextStyle(color: ColorPalette.primaryText),),
                                      Text('Followers', style: TextStyle(color: ColorPalette.primaryText),)
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Column(
                                    children: <Widget>[
                                      Text('50', style: TextStyle(color: ColorPalette.primaryText),),
                                      Text('Following', style: TextStyle(color: ColorPalette.primaryText),)
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Column(
                                    children: <Widget>[
                                      Text('30', style: TextStyle(color: ColorPalette.primaryText),),
                                      Text('Songs', style: TextStyle(color: ColorPalette.primaryText),)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                backgroundColor: ColorPalette.primaryIcon
                              ),
                              child: Text('Edit!', style: TextStyle(color: ColorPalette.blackText),)
                            ),
                          ],
                        ),
                      )
                      ),
                      // Container(
                      //   // width: width,
                      //   child: Column(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: <Widget>[
                      //       Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //         children: <Widget>[
                      //           Center(
                      //             child: Column(
                      //               children: <Widget>[
                      //                 Text('22', style: TextStyle(color: ColorPalette.primaryText),),
                      //                 Text('Playlist', style: TextStyle(color: ColorPalette.primaryText),)
                      //               ],
                      //             ),
                      //           ),
                      //           Center(
                      //             child: Column(
                      //               children: <Widget>[
                      //                 Text('360 K', style: TextStyle(color: ColorPalette.primaryText),),
                      //                 Text('Followers', style: TextStyle(color: ColorPalette.primaryText),)
                      //               ],
                      //             ),
                      //           ),
                      //           Center(
                      //             child: Column(
                      //               children: <Widget>[
                      //                 Text('50', style: TextStyle(color: ColorPalette.primaryText),),
                      //                 Text('Following', style: TextStyle(color: ColorPalette.primaryText),)
                      //               ],
                      //             ),
                      //           ),
                      //           Center(
                      //             child: Column(
                      //               children: <Widget>[
                      //                 Text('30', style: TextStyle(color: ColorPalette.primaryText),),
                      //                 Text('Songs', style: TextStyle(color: ColorPalette.primaryText),)
                      //               ],
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //       SizedBox(
                      //         height: 10,
                      //       ),
                      //       OutlinedButton(
                      //         onPressed: () {},
                      //         style: OutlinedButton.styleFrom(
                      //           backgroundColor: ColorPalette.primaryIcon
                      //         ),
                      //         child: Text('Edit!', style: TextStyle(color: ColorPalette.blackText),)
                      //       ),
                      //     ],
                      //   ),
                      // )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: width,
                  height: height*0.06,
                  // color: Colors.yellow,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Library',
                      style: TextStyle(
                        color: ColorPalette.primaryText,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  width: width,
                  height: height*0.36,
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: ColorPalette.greyLineBorder,
                                width: 0.3
                              )
                            )
                          ),
                          child: listTile(Icons.library_music_sharp, 'My Playlist'),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: ColorPalette.greyLineBorder,
                                width: 0.3
                              )
                            )
                          ),
                          child: listTile(Icons.album, 'Album'),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: ColorPalette.greyLineBorder,
                                width: 0.3
                              )
                            )
                          ),
                          child: listTile(Entypo.video, 'MV'),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: ColorPalette.greyLineBorder,
                                width: 0.3
                              )
                            )
                          ),
                          child: listTile(Elusive.adult, 'Artist'),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: ColorPalette.greyLineBorder,
                                width: 0.3
                              )
                            )
                          ),
                          child: listTile(LineariconsFree.download, 'Download'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width,
                  height: height*0.06,
                  margin: EdgeInsets.only(
                    top: 15
                  ),
                  // color: Colors.yellow,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Recent Activity',
                      style: TextStyle(
                        color: ColorPalette.primaryText,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  width: width,
                  child: Wrap(
                    // alignment: WrapAlignment.spaceAround,
                    spacing: 10,
                    runSpacing: 10,
                    children: <Widget>[
                      GestureDetector(
                        child: Container(
                          width: width*0.2,
                          height: width*0.2,
                          child: boxRecentActivity(Images.radio1),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          width: width*0.2,
                          height: width*0.2,
                          child: boxRecentActivity(Images.radio2),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          width: width*0.2,
                          height: width*0.2,
                          child: boxRecentActivity(Images.radio3),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          width: width*0.2,
                          height: width*0.2,
                          child: boxRecentActivity(Images.radio4),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          width: width*0.2,
                          height: width*0.2,
                          child: boxRecentActivity(Images.radio5),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          width: width*0.2,
                          height: width*0.2,
                          child: boxRecentActivity(Images.radio6),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

ListTile listTile(IconData icon, String text) {
  return ListTile(
    contentPadding: EdgeInsets.all(0),
    minLeadingWidth: 0,
    title: Text(
      text,
      style: TextStyle(color: ColorPalette.primaryText),
    ),
    leading: Icon(
      icon,
      color: ColorPalette.blue100,
      size: 20,
    ),
  );
}

ClipRRect boxRecentActivity(String img) {
  return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Image.asset(img, fit: BoxFit.cover,),
  );
}
