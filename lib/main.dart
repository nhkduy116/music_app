import 'package:flutter/material.dart';
import 'components/login_page.dart';
import 'app_img.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Scaffold Example',
      home: MyScaffoldPage(),
    );
  }
}

class MyScaffoldPage extends StatefulWidget {
  const MyScaffoldPage({Key? key}) : super(key: key);

  @override
  State<MyScaffoldPage> createState() => _MyScaffoldPageState();
}

class _MyScaffoldPageState extends State<MyScaffoldPage> {
  // final int _count = 0;
  final String _un = "Duy Nguyen";
  final String _pw = "duynguyen11062002@gmail.com";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: '#63A4FF'.toColor(),
        title: Text(
          'Music App',
          textAlign: TextAlign.center,
        ),
      ),
      body: PageCenter(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: '#83EAF1'.toColor(),
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text(
              'Error',
              style: TextStyle(color: Colors.red),
            ),
            content: const Text(
              'There is no song to search',
              style: TextStyle(color: Colors.black),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        ),
        child: Icon(Icons.search),
        hoverColor: Colors.blue[200],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: '#83EAF1'.toColor(),
        // shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50,
        ),
      ),
      drawer: Drawer(
        backgroundColor: '#06008A'.toColor(),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(68, 149, 236, 1),
              '#ABE9CD'.toColor(),
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
                    Color.fromRGBO(68, 149, 236, 1),
                    '#ABE9CD'.toColor(),
                  ],
                )),
                accountName: Text(_un),
                accountEmail: Text(_pw),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Text('DN'),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
                },
              ),
            ],
          ),
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
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            '#63A4FF'.toColor(),
            '#83EAF1'.toColor(),
          ])),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: width,
              height: height / 7,
              // color: Colors.black,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.black),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image(
                      image: AssetImage(Images.alb_proof),
                      fit: BoxFit.fill,
                      width: width * 0.3,
                      height: height,
                    ),
                  ),
                  Container(
                    width: width / 1.672,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            Colors.red,
                            Colors.black,
                          ],
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Proof',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.skip_previous,
                              color: Colors.white,
                              size: 35,
                            ),
                            Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                              size: 35,
                            ),
                            Icon(
                              Icons.skip_next,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: width,
              height: height / 7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(253, 222, 0, 1)),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image(
                      image: AssetImage(Images.alb_butter),
                      fit: BoxFit.fill,
                      width: width * 0.3,
                      height: height,
                    ),
                  ),
                  Container(
                    width: width / 1.672,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            '#FBB034'.toColor(),
                            Color.fromRGBO(253, 222, 0, 1),
                          ],
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Butter',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.skip_previous,
                              color: Colors.white,
                              size: 35,
                            ),
                            Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                              size: 35,
                            ),
                            Icon(
                              Icons.skip_next,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: width,
              height: height / 7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(166, 199, 233, 1)),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image(
                      image: AssetImage(Images.alb_ly_answer),
                      fit: BoxFit.fill,
                      width: width * 0.3,
                      height: height,
                    ),
                  ),
                  Container(
                    width: width / 1.672,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            '#ABE9CD'.toColor(),
                            Color.fromRGBO(166, 199, 233, 1),
                          ],
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Love Yourself: Answer',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.skip_previous,
                              color: Colors.white,
                              size: 35,
                            ),
                            Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                              size: 35,
                            ),
                            Icon(
                              Icons.skip_next,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: width,
              height: height / 7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(22, 25, 36, 1)),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image(
                      image: AssetImage(Images.alb_ly_tear),
                      fit: BoxFit.fill,
                      width: width * 0.3,
                      height: height,
                    ),
                  ),
                  Container(
                    width: width / 1.672,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            Colors.red,
                            Color.fromRGBO(22, 25, 36, 1),
                          ],
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Love Yourself: Tear',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.skip_previous,
                              color: Colors.white,
                              size: 35,
                            ),
                            Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                              size: 35,
                            ),
                            Icon(
                              Icons.skip_next,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: width,
              height: height / 7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(254, 119, 156, 1)),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image(
                      image: AssetImage(Images.alb_persona),
                      fit: BoxFit.fill,
                      width: width * 0.3,
                      height: height,
                    ),
                  ),
                  Container(
                    width: width / 1.672,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            '#ABE9CD'.toColor(),
                            Color.fromRGBO(254, 119, 156, 1),
                          ],
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Persona',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.skip_previous,
                              color: Colors.white,
                              size: 35,
                            ),
                            Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                              size: 35,
                            ),
                            Icon(
                              Icons.skip_next,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
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

