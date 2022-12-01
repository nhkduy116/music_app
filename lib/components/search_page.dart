// ignore_for_file: unused_import, unused_local_variable

import 'package:flutter/material.dart';
import 'package:music_app/constants/color_constants.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorPalette.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 9,
                      child: TextField(
                        controller: search,
                        style: TextStyle(color: ColorPalette.primaryText),
                        decoration: InputDecoration(
                          disabledBorder: InputBorder.none,
                          fillColor: ColorPalette.greyInputSearch,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide.none
                          ),
                          prefixIcon: Icon(Icons.search, color: ColorPalette.whiteIcon,),
                          hintText: "Search",
                          hintStyle: TextStyle(color: ColorPalette.primaryText, )
                        ),
                      )
                    ),
                    Expanded(
                      flex: 2,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.only(
                            left: 10,
                          ),
                          child: Text('Cancel', style: TextStyle(color: ColorPalette.primaryIcon, fontSize: 14),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'History',
                style: TextStyle(
                  color: ColorPalette.primaryText,
                  fontSize: 24
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Wrap(
                  spacing: 10,
                  alignment: WrapAlignment.start,
                  runAlignment: WrapAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorPalette.primaryIcon, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Attention', style: TextStyle(color: ColorPalette.primaryIcon, fontSize: 14),)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorPalette.primaryIcon, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Peach', style: TextStyle(color: ColorPalette.primaryIcon, fontSize: 14),)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorPalette.primaryIcon, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Way back home', style: TextStyle(color: ColorPalette.primaryIcon, fontSize: 14),)
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Top Searching',
                style: TextStyle(
                  color: ColorPalette.primaryText,
                  fontSize: 24
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Wrap(
                  spacing: 10,
                  alignment: WrapAlignment.start,
                  runAlignment: WrapAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: ColorPalette.primaryIcon,
                        border: Border.all(color: ColorPalette.primaryIcon, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text('BTS', style: TextStyle(color: ColorPalette.blackText, fontSize: 14),)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: ColorPalette.primaryIcon,
                        border: Border.all(color: ColorPalette.primaryIcon, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Justin Bieber', style: TextStyle(color: ColorPalette.blackText, fontSize: 14),)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: ColorPalette.primaryIcon,
                        border: Border.all(color: ColorPalette.primaryIcon, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Charlie Puth', style: TextStyle(color: ColorPalette.blackText, fontSize: 14),)
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
