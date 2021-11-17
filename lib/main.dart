import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'view/forum/topik.dart';
import 'view/home.dart';
import 'view/nav.dart';
import './launcher.dart';
import 'view/login2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/nav': (BuildContext _) => nav(),
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LauncherPage(),
    );
  }
}

// void main() {
//   runApp(nav());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         body: Center(child: Container(child: DropDownWidget())),
//         bottomNavigationBar: nav3(),
//       ),
//     );
//   }
// }

// class DropDownWidget extends StatefulWidget {
//   const DropDownWidget({Key? key}) : super(key: key);

//   @override
//   _DropDownWidgetState createState() => _DropDownWidgetState();
// }

// class _DropDownWidgetState extends State<DropDownWidget> {
//   List _items = ["Manajemen Resiko SPBE", "Manajemen SDM SPBE"];
//   List _items2 = ["Aduan Masyarakat", "Satu Data", "Produk Hukum"];
//   String _value = "Manajemen Resiko SPBE";
//   String _value2 = "Aduan Masyarakat";
//   String h = "kategori";
//   int i = 1;
//   @override
//   Widget build(BuildContext context) => Column(
//         children: [
//           Row(
//             children: [
//               TextButton(
//                 child: Text("MANAJEMEN SPBE"),
//                 onPressed: () {
//                   Navigator.pushNamed(context, '/home');
//                 },
//               ),
//               DropdownButton<String>(
//                   value: _value,
//                   icon: Icon(Icons.arrow_drop_down_circle_outlined),
//                   dropdownColor: Colors.blue[100],
//                   items: _items
//                       .map<DropdownMenuItem<String>>((a) => DropdownMenuItem(
//                             child: TextButton(
//                               child: Text(
//                                 a,
//                                 style: TextStyle(fontSize: 10),
//                               ),
//                               onPressed: () {
//                                 if (a == "Manajemen Resiko SPBE") {
//                                   Navigator.pushNamed(context, '/ka1');
//                                 }
//                                 if (a == "Manajemen SDM SPBE") {
//                                   Navigator.pushNamed(context, '/$h$i)');
//                                 }
//                               },
//                             ),
//                             value: a,
//                           ))
//                       .toList(),
//                   // onTap: () {
//                   //   Navigator.pushNamed(context, '/home');
//                   // },
//                   onChanged: (value) {
//                     setState(() {
//                       _value = value!;
//                     });
//                   }),
//             ],
//           ),
//           Row(
//             children: [
//               TextButton(
//                 child: Text("LAYANAN PUBLIK SPBE"),
//                 onPressed: () {
//                   Navigator.pushNamed(context, '/home');
//                 },
//               ),
//               DropdownButton<String>(
//                   value: _value2,
//                   icon: Icon(Icons.arrow_drop_down_circle_outlined),
//                   dropdownColor: Colors.blue[100],
//                   items: _items2
//                       .map<DropdownMenuItem<String>>((a) => DropdownMenuItem(
//                             child: Text(a, style: TextStyle(fontSize: 10)),
//                             value: a,
//                           ))
//                       .toList(),
//                   onChanged: (value2) {
//                     setState(() {
//                       _value = value2!;
//                     });
//                   }),
//             ],
//           ),
//         ],
//       );
// }

// class nav3 extends StatelessWidget {
//   late String _valKategori;
//   List _kategori = [
//     "a",
//     "b",
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       routes: <String, WidgetBuilder>{
//         '/home': (BuildContext _) => home(),
//         '/forum': (BuildContext _) => nav3(),
//         '/ka1': (BuildContext _) => ka1(),
//         '/kategori1': (BuildContext _) => kategori1(),
//         '/kategori2': (BuildContext _) => kategori2()
//       },
//       home: Container(
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text("Icon"),
//           ),
//           body: Container(
//             // color: Colors.blueAccent,
//             // height: 900,
//             // width: 900,
//             margin: const EdgeInsets.all(20.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[Text("Kategori Forum\n\n"), DropDownWidget()],
//             ),
//           ),
//           bottomNavigationBar: CurvedNavigationBar(
//             backgroundColor: Colors.blueAccent,
//             items: <Widget>[
//               Expanded(
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => const home()));
//                   },
//                   child: Icon(Icons.holiday_village),
//                 ),
//               ),
//               Expanded(
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.of(context).pushNamed('/forum');
//                   },
//                   child: Icon(Icons.chat_rounded),
//                 ),
//               ),
//               Icon(Icons.picture_in_picture_outlined, size: 30),
//               Icon(Icons.person_rounded, size: 30),
//               Icon(Icons.more_horiz, size: 30),
//             ],
//             onTap: (index) {
//               //Handle button tap
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

class kategori1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 16),
          Text("Kategori 1 : Manajemen Resiko SPBE"),
          FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back to home"))
        ],
      ),
    );
  }
}

class kategori2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 16),
          Text("Kategori 2 : Manajemen SDM SPBE"),
          FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back to home"))
        ],
      ),
    );
  }
}

// class Nav2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: Scaffold(
//         body: SafeArea(
//           child: Text('Hi'),
//         ),
//         bottomNavigationBar: Container(
//           height: 60,
//           color: Colors.black12,
//           child: InkWell(
//             onTap: () => print('tap on close'),
//             child: Padding(
//               padding: EdgeInsets.only(top: 0.0),
//               child: Column(
//                 children: <Widget>[
//                   Icon(
//                     Icons.home,
//                     color: Theme.of(context).accentColor,
//                   ),
//                   Text('Home'),
//                   Icon(
//                     Icons.home,
//                     color: Theme.of(context).accentColor,
//                   ),
//                   Text('Home'),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Nav extends StatelessWidget {
//   const Nav({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) => new Scaffold(
//         appBar: AppBar(
//           title: Text('Bottom Navigation Bar'),
//           centerTitle: true,
//         ),
//         body: Center(
//             child: Text(
//           'Home',
//           style: TextStyle(fontSize: 34),
//         )),
//         bottomNavigationBar: new BottomNavigationBar(
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//               backgroundColor: Colors.blue,
//             )
//           ],
//         ),
//       );
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
