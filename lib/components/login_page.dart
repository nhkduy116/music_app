// ignore_for_file: unnecessary_new, sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, import_of_legacy_library_into_null_safe, depend_on_referenced_packages, unnecessary_import, avoid_unnecessary_containers, implementation_imports

import 'package:flutter/material.dart';
import '../constants/color_constants.dart';
import '../main.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_app/constants/app_img.dart';
import 'signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/signup_page':(context) => SignupPage(),
        // '/home_page':(context) => MyApp(),
      },
      home: PageCenter(),
    );
  }
}

class PageCenter extends StatefulWidget {
  const PageCenter({Key? key}) : super(key: key);

  @override
  State<PageCenter> createState() => _PageCenterState();
}

class _PageCenterState extends State<PageCenter> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorPalette.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
        child: Container(
          width: _width,
          height: _height,
          padding: EdgeInsets.only(top: 35, right: 20, bottom: 35, left: 20),
          color: Color.fromRGBO(255, 255, 255, 1),
          // color: ColorPalette.primaryColor,
          child: SizedBox(
            width: _width,
            height: _height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.arrow_back_ios_new_rounded, size: 15,),
                    InkWell(
                      child: Text('Home Page'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp()));
                      },
                    )
                  ],
                ),
                Container(
                  width: _width,
                  height: 400,
                  child: Image(image: AssetImage(Images.login_layout)),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Form(
                    key: _formKey,
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
                              // border: InputBorder.none,
                              // focusedBorder: InputBorder.none,
                              // enabledBorder: InputBorder.none,
                              // errorBorder: InputBorder.none,
                              // disabledBorder: InputBorder.none,
                                icon: FaIcon(
                                  FontAwesomeIcons.lock,
                                  size: 20,
                                ),
                                hintText: 'Enter your Password',
                                hintStyle:
                                    TextStyle(color: ColorPalette.lightblue),
                                labelText: 'Password'),
                          ),
                          new Container(
                            margin: EdgeInsets.only(top: 10),
                            padding: EdgeInsets.only(right: 30, left: 30),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Login',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: ColorPalette.blueBold,
                                  shadowColor: ColorPalette.blueBold,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  minimumSize:
                                      Size(_width * 0.8, _height / 23)),
                            ),
                          )
                        ],
                      ),
                    )),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Or, Login with',
                        style:
                            TextStyle(fontSize: 12, color: ColorPalette.grey),
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
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't have an account ?",
                        style: TextStyle(fontSize: 12),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup_page');
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(fontSize: 12),
                        ),
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )
      ),
    );
  }
}
