import 'package:flutter/material.dart';
import 'package:manajemenspbe/view/forum/forum.dart';
import 'package:manajemenspbe/view/forum/topik.dart';
import 'package:manajemenspbe/view/forum/topik2.dart';
import 'package:manajemenspbe/view/nav.dart';
// import 'package:manajemenspbe/view/nav.dart';
import '../nav.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class list extends StatefulWidget {
  const list({Key? key}) : super(key: key);

  @override
  _listState createState() => _listState();
}

class _listState extends State<list> {
  @override
  List _list = [];

  Future getProducts() async {
    var response = await http.get(Uri.parse("http://10.0.2.2:8000/api/topik"));
    Map<String, dynamic> map = json.decode(response.body);
    List<dynamic> data = map["data"];
    // print(data[0]["judul"]);
    _list = data;
  }

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    if (arguments != null) print(arguments['kategori']);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 59, left: 25, right: 24),
        child: FutureBuilder(
          future: getProducts(),
          builder: (context, snapshot) {
            return ListView.builder(
              itemCount: _list.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    if (_list[index]["kategori"]["kategori"] ==
                        arguments['kategori'])
                      ListTile(
                        title: Text(_list[index]["judul"]),
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            '/topik',
                            arguments: {
                              'judultopik': _list[index]["judul"],
                              'id': (_list[index]["id"])
                            },
                          );
                        },
                      ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
// class list extends StatelessWidget {
//   List _list = [];

//   Future getProducts() async {
//     var response = await http.get(Uri.parse("http://10.0.2.2:8000/api/topik"));
//     Map<String, dynamic> map = json.decode(response.body);
//     List<dynamic> data = map["data"];
//     print(data[0]["judul"]);
//     _list = data;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.only(top: 59, left: 25, right: 24),
//         child: FutureBuilder(
//           future: getProducts(),
//           builder: (context, snapshot) {
//             return ListView.builder(
//               itemCount: _list.length,
//               itemBuilder: (context, index) {
//                 return Column(
//                   children: [
//                     ListTile(
//                       title: Text(_list[index]["judul"]),
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => topik()),
//                         );
//                       },
//                     )
//                   ],
//                 );
//               },
//             );
//           },
//         ),
//         // child: ListView(
//         //   padding: const EdgeInsets.only(top: 59, left: 25, right: 24),
//         //   children: <Widget>[
//         //     FlatButton(
//         //       onPressed: () {
//         //         Navigator.pop(context);
//         //       },
//         //       padding: EdgeInsets.only(left: 2),
//         //       child: Icon(Icons.arrow_back),
//         //     ),
//         //     Card(
//         //       child: Container(
//         //         child: TextButton(
//         //           onPressed: () {
//         //             Navigator.pushNamed(context, '/list');
//         //           },
//         //           child: Center(
//         //             child: Text(
//         //               "Managemen Resiko SPBE",
//         //               style: TextStyle(color: Colors.white, fontSize: 12),
//         //             ),
//         //           ),
//         //         ),
//         //         width: 280,
//         //         height: 30,
//         //         decoration: new BoxDecoration(
//         //             color: new Color(0xFF333366),
//         //             shape: BoxShape.rectangle,
//         //             borderRadius: new BorderRadius.circular(3),
//         //             boxShadow: <BoxShadow>[
//         //               new BoxShadow(
//         //                   color: Colors.black12,
//         //                   blurRadius: 10,
//         //                   offset: new Offset(0.0, 10.0))
//         //             ]),
//         //       ),
//         //     ),
//         //     Container(
//         //       child: FutureBuilder(
//         //         future: getProducts(),
//         //         builder: (context, snapshot) {
//         //           return ListView.builder(
//         //             itemCount: _list.length,
//         //             itemBuilder: (context, index) {
//         //               return Column(
//         //                 children: [
//         //                   ListTile(
//         //                     title: Text(""),
//         //                     onTap: () {
//         //                       Navigator.push(
//         //                         context,
//         //                         MaterialPageRoute(
//         //                             builder: (context) => topik()),
//         //                       );
//         //                     },
//         //                   )
//         //                 ],
//         //               );
//         //             },
//         //           );
//         //         },
//         //       ),
//         //     ),
//         //     ListTile(
//         //       title: Text('<Judul Topik 2>'),
//         //     ),
//         //     ListTile(
//         //       title: Text('<Judul Topik 3>'),
//         //     ),
//         //     // Text("\n Topik Baru"),
//         //     // Form(
//         //     //   key: _formKey,
//         //     //   child: Column(
//         //     //     crossAxisAlignment: CrossAxisAlignment.start,
//         //     //     children: <Widget>[
//         //     //       TextFormField(
//         //     //         decoration: const InputDecoration(
//         //     //           hintText: 'Judul Topik',
//         //     //         ),
//         //     //         validator: (String? value) {
//         //     //           if (value == null || value.isEmpty) {
//         //     //             return 'Please enter some text';
//         //     //           }
//         //     //           return null;
//         //     //         },
//         //     //       ),
//         //     //       TextFormField(
//         //     //         decoration: const InputDecoration(
//         //     //           hintText: 'Isi Topik',
//         //     //         ),
//         //     //         validator: (String? value) {
//         //     //           if (value == null || value.isEmpty) {
//         //     //             return 'Please enter some text';
//         //     //           }
//         //     //           return null;
//         //     //         },
//         //     //       ),
//         //     //       TextFormField(
//         //     //         decoration: const InputDecoration(
//         //     //           hintText: 'Upload Gambar',
//         //     //         ),
//         //     //         validator: (String? value) {
//         //     //           if (value == null || value.isEmpty) {
//         //     //             return 'Please enter some text';
//         //     //           }
//         //     //           return null;
//         //     //         },
//         //     //       ),
//         //     //       ElevatedButton(
//         //     //         onPressed: () {
//         //     //           // Validate will return true if the form is valid, or false if
//         //     //           // the form is invalid.
//         //     //           if (_formKey.currentState!.validate()) {
//         //     //             // Process data.
//         //     //           }
//         //     //         },
//         //     //         child: const Text('Kirim'),
//         //     //       ),
//         //     //     ],
//         //     //   ),
//         //     // ),
//         //   ],
//         // ),
//       ),
//     );
//     // return MaterialApp(
//     //   home: ListView(
//     //     children: <Widget>[
//     //       ListTile(
//     //         title: Text('Black'),
//     //       ),
//     //       ListTile(
//     //         title: Text('White'),
//     //       ),
//     //       ListTile(
//     //         title: Text('Grey'),
//     //       ),
//     //     ],
//     //   ),
//     // );
//   }
// }
