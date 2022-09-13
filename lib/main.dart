import 'package:flutter/material.dart';
import 'components/login_page.dart';
import 'layout_element/box_music.dart';
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
          children: List.generate(albMusic.length, (index) {
            return Center(  
                    child: BoxMusic(albMusic: albMusic[index]),  
                  ); 
          })
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

