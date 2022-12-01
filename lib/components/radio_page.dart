// ignore_for_file: unused_import, unused_local_variable

import 'package:flutter/material.dart';
import 'package:music_app/constants/color_constants.dart';
import '../classes/classes.dart';
import '../constants/app_img.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  Images.img_slider1,
  Images.img_slider2,
  Images.img_slider3,
  Images.img_slider4,
  Images.img_slider5,
];

const List<ComponentRadio> boxRadio = const <ComponentRadio>[
  const ComponentRadio(
      img: Images.radio1,
      title: 'Geez Radio Weekly',
      content: 'Geez Radio Weekly'),
  const ComponentRadio(
      img: Images.radio2,
      title: 'Geez Radio Weekly',
      content: 'Geez Radio Weekly'),
  const ComponentRadio(
      img: Images.radio3,
      title: 'Geez Radio Weekly',
      content: 'Geez Radio Weekly'),
  const ComponentRadio(
      img: Images.radio4,
      title: 'Geez Radio Weekly',
      content: 'Geez Radio Weekly'),
  const ComponentRadio(
      img: Images.radio5,
      title: 'Geez Radio Weekly',
      content: 'Geez Radio Weekly'),
  const ComponentRadio(
      img: Images.radio6,
      title: 'Geez Radio Weekly',
      content: 'Geez Radio Weekly'),
  const ComponentRadio(
      img: Images.radio7,
      title: 'Geez Radio Weekly',
      content: 'Geez Radio Weekly'),
  const ComponentRadio(
      img: Images.radio8,
      title: 'Geez Radio Weekly',
      content: 'Geez Radio Weekly'),
];

class RadioPage extends StatelessWidget {
  const RadioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.primaryColor,
      // appBar: AppBar(
      //   title: Text(''),
      // ),
      body: PageContent(),
    );
  }
}

class PageContent extends StatefulWidget {
  const PageContent({Key? key}) : super(key: key);

  @override
  State<PageContent> createState() => _PageContentState();
}

class _PageContentState extends State<PageContent> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Container(
      width: width,
      height: height,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              width: width,
              height: height * 0.17,
              padding: EdgeInsets.only(
                // top: 20,
                // bottom: 5,
                left: 20,
                right: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Radio',
                    style: TextStyle(
                        color: ColorPalette.primaryText,
                        fontSize: 42,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    // color: Colors.yellow,
                    height: height * 0.08,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Geez Radio Weekly',
                          style: TextStyle(
                              color: ColorPalette.primaryText,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Geez Radio Weekly',
                          style: TextStyle(
                              color: ColorPalette.greyText, fontSize: 16),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                viewportFraction: 0.85,
                enlargeCenterPage: true,
              ),
              items: imageSliders,
            ),
            Container(
              width: width,
              height: height * 0.07,
              padding: EdgeInsets.only(
                top: 20,
                bottom: 5,
                left: 20,
                right: 20,
              ),
              // color: Colors.grey,
              child: Text(
                'Popular',
                style: TextStyle(
                    color: ColorPalette.primaryText,
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(boxRadio.length, (index) {
                  return BoxRadio(
                    width,
                    boxRadio[index].img,
                    boxRadio[index].title,
                    boxRadio[index].content,
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          // margin: EdgeInsets.all(1.0),
          child: Container(
            // margin: EdgeInsets.all(1.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Image.asset(item, fit: BoxFit.cover, width: 1100.0)),
          ),
        ))
    .toList();

Widget BoxRadio(double width, String img, String title, String content) {
  return Container(
      width: width,
      padding: EdgeInsets.only(
        // top: 10,
        // bottom: 10,
        left: 20,
        right: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                    width: width * 0.25,
                    height: width * 0.25,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                  height: width * 0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            color: ColorPalette.primaryText, fontSize: 20),
                      ),
                      Text(
                        content,
                        style: TextStyle(
                            color: ColorPalette.greyText, fontSize: 14),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ));
}
