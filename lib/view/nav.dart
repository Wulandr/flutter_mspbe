import 'package:flutter/cupertino.dart';
import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:manajemenspbe/view/home.dart';
import 'package:manajemenspbe/view/forum/forum.dart';
import 'package:manajemenspbe/view/inovasi.dart';
import 'package:manajemenspbe/view/login.dart';
import 'package:manajemenspbe/view/more.dart';
import '../main.dart';
import 'forum/topik.dart';
import 'forum/forum.dart';
import 'forum/list.dart';
import 'login2.dart';

class nav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue, backgroundColor: Colors.blue[50]),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext _) => home(),
        '/forum': (BuildContext _) => Forum(),
        '/list': (BuildContext _) => list(),
        '/topik': (BuildContext _) => topik(),
        '/kategori1': (BuildContext _) => kategori1(),
        '/kategori2': (BuildContext _) => kategori2()
      },
      home: MyExample(),
    );
  }
}

class MyExample extends StatefulWidget {
  @override
  _MyExampleState createState() => _MyExampleState();
}

class _MyExampleState extends State<MyExample> {
  int _selectedIndex = 0; //default index

  List<Widget> _widgetOptions = [
    home(),
    Forum(),
    inovasi(),
    Text('Profil'),
    HomePage(), //more
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MSPBE'),
      ),
      body: Container(
        color: Colors.blue[51],
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CustomLineIndicatorBottomNavbar(
        selectedColor: Colors.blue,
        unSelectedColor: Colors.black54,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        enableLineIndicator: true,
        lineIndicatorWidth: 3,
        indicatorType: IndicatorType.Top,
        // gradient: LinearGradient(
        //   colors: kGradients,
        // ),

        customBottomBarItems: [
          CustomBottomBarItems(
            label: 'Home',
            icon: Icons.home,
          ),
          CustomBottomBarItems(label: 'Forum', icon: Icons.forum),
          CustomBottomBarItems(
            label: 'Inovasi',
            icon: Icons.analytics,
          ),
          CustomBottomBarItems(
            label: 'Profil',
            icon: Icons.account_box_outlined,
          ),
          CustomBottomBarItems(
            label: 'More',
            icon: Icons.list,
          ),
        ],
      ),
    );
  }
}
