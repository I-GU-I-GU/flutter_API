import 'package:bottom/pages/contect.dart';
import 'package:bottom/pages/home.dart';
import 'package:bottom/pages/person.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:bottom/NavBar.dart';

void main() {
  runApp(MyApp());
}

// stl---------------------------------------------ไม่ค่อยเปลี่ยนข้อมูล
class MyApp extends StatelessWidget {
  //const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainPage());
  }
}

//-----------------------------------------------------------------
//-----------------------------------------------------------------
//----------------------------เรื่มเขียนBottom---------------------------
class MainPage extends StatefulWidget {
  //const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //----------------สร้างตัวแปร-------------------------------------------
  int _currentIndex = 1;
  final tabs = [personPage(), HomPage(), ContectPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      backgroundColor: const Color(0xFFECF2FF),
      //-------------------------------------------------------------------------------AppBar---------------------
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.purple, Colors.orangeAccent],
            begin: Alignment.bottomRight,
            end: Alignment.centerLeft,
          )),
        ),
        elevation: 2,

        ///เงากรอบ
        title: Text('B O O K B A R'),
        // leading: IconButton(
        //     onPressed: () {
        //       //ทำอะไรสักอย่าง
        //     },
        //     icon: Icon(Icons.menu)),
      ),
      //--------------------------------------------------------------------BottomBAR---------------------------------------------------------------
      body: tabs[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        height: 60.0,
        backgroundColor: Colors.orangeAccent,
        items: <Widget>[
          Icon(
            Icons.group_outlined,
            size: 30,
          ),
          Icon(Icons.home, size: 30),
          Icon(Icons.favorite_sharp, size: 30),
        ],
        onTap: (index) {
          setState(() {
            print(index);
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
