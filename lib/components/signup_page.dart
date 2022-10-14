// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import '../main.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import '../constants/color_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_app/app_img.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageCenterSignup(),
      ),
    );
  }
}

class PageCenterSignup extends StatefulWidget {
  const PageCenterSignup({Key? key}) : super(key: key);

  @override
  State<PageCenterSignup> createState() => _PageCenterSignupState();
}

class _PageCenterSignupState extends State<PageCenterSignup> {
  final _formKeySignup = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        width: _width,
        height: _height,
        padding: EdgeInsets.only(top: 35, right: 20, bottom: 35, left: 20),
        color: Color.fromRGBO(255, 255, 255, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 15,
                ),
                InkWell(
                  child: Text('Home Page'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyApp()));
                  },
                )
              ],
            ),
            Container(
              width: _width,
              height: 400,
              child: Image(image: AssetImage(Images.signup_layout)),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sign up',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: ColorPalette.lightblue,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  )
                ],
              ),
            ),
            Container(
              width: _width,
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: _width * 0.22,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: FaIcon(
                          FontAwesomeIcons.google,
                          size: 17,
                          color: ColorPalette.lighRed,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  Container(
                    width: _width * 0.22,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: FaIcon(
                          FontAwesomeIcons.facebook,
                          size: 17,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  Container(
                    width: _width * 0.22,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: FaIcon(
                          FontAwesomeIcons.apple,
                          size: 17,
                          color: ColorPalette.greyBold,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Or, register with Email',
                    style: TextStyle(fontSize: 12, color: ColorPalette.grey),
                  )
                ],
              ),
            ),
            Form(
                key: _formKeySignup,
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: const InputDecoration(
                            icon: FaIcon(
                              FontAwesomeIcons.at,
                              size: 20,
                            ),
                            hintText: 'Enter your Email',
                            hintStyle: TextStyle(color: Colors.lightBlue),
                            labelText: 'Email'),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            icon: FaIcon(
                              FontAwesomeIcons.lock,
                              size: 20,
                            ),
                            hintText: 'Enter your Password',
                            hintStyle: TextStyle(color: ColorPalette.lightblue),
                            labelText: 'Password'),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            icon: FaIcon(
                              FontAwesomeIcons.user,
                              size: 20,
                            ),
                            hintText: 'Enter your full name',
                            hintStyle: TextStyle(color: Colors.lightBlue),
                            labelText: 'Full name'),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            icon: FaIcon(
                              FontAwesomeIcons.briefcase,
                              size: 20,
                            ),
                            hintText: 'Enter your name of Company',
                            hintStyle: TextStyle(color: ColorPalette.lightblue),
                            labelText: 'Company'),
                      ),
                      // new Container(
                      //   margin: EdgeInsets.only(
                      //     top: 10
                      //   ),
                      //   padding: EdgeInsets.only(
                      //     right: 30,
                      //     left: 30
                      //   ),
                      //   child: ElevatedButton(
                      //     onPressed: () {},
                      //     child: Text('Login', style: TextStyle(color: Colors.white),),
                      //     style: ElevatedButton.styleFrom(
                      //       primary: ColorPalette.blueBold,
                      //       shadowColor: ColorPalette.blueBold,
                      //       shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(20)
                      //       ),
                      //       minimumSize: Size(_width*0.8, _height/23)
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
