import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';

class Forum extends StatefulWidget {
  const Forum({Key? key}) : super(key: key);

  @override
  _ForumState createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  List _list = [];

  // Fetch content from the json file
  // Future<void> readJson() async {
  //   final response = await http.get(Uri.parse("http://10.0.2.2/api/mahasiswa"));
  //   final data = await json.decode(response.body);
  //   return data;
  // }

  Future getProducts() async {
    var response =
        await http.get(Uri.parse("http://10.0.2.2:8000/api/kategori"));
    // final data = await json.decode(response.body);
    Map<String, dynamic> map = json.decode(response.body);
    List<dynamic> data = map["data"];
    // print(data[0]["kategori"]);
    // print(data);
    _list = data;
    // return _list;
    // return json.decode(response.body);
  }

  int h = 0;

  @override
  Widget build(BuildContext context) {
    getProducts();
    return Container(
      decoration: BoxDecoration(
        gradient:
            RadialGradient(colors: [Colors.blue.shade100, Colors.white10]),
      ),
      margin: EdgeInsets.only(left: 28.8, right: 28.8, top: 28.8),
      child: FutureBuilder(
        future: getProducts(),
        builder: (context, snapshot) {
          return ListView.builder(
              itemCount: _list.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    if ((_list[index]["parent"]) == 0)
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.purple.withOpacity(.2),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.app_registration_rounded,
                                    size: 50,
                                    color: Colors.purple,
                                  ),
                                  Text(
                                    _list[index]["kategori"],
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black),
                                  ),
                                  if (_list[index]["kategori"] ==
                                      "Manajemen SPBE")
                                    Container(
                                      width: 130,
                                      child: Column(
                                        children: [
                                          Text("- Manajemen Risiko SPBE",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.purple)),
                                          Text("- Manajemen SDM SPBE",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.purple))
                                        ],
                                      ),
                                    ),
                                  if (_list[index]["kategori"] ==
                                      "Layanan Publik")
                                    Container(
                                      width: 130,
                                      child: Column(
                                        children: [
                                          Text("- Aduan Masyarakat",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.purple)),
                                          Text("- Satu Data",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.purple)),
                                          Text("- Produk Hukum",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.purple)),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          // Row(
                          //   children: [
                          //     TextButton(
                          //       child: Text(
                          //         _list[index]["id"] +
                          //             ". " +
                          //             _list[index]["kategori"],
                          //       ),
                          //       onPressed: () {
                          //         Navigator.pushNamed(context, '/list');
                          //       },
                          //     ),
                          //   ],
                          // ),
                        ],
                      ),
                    if ((_list[index]["kategori"]) == "Manajemen SPBE")
                      Container(
                        // padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          // color: Colors.grey[300],
                          borderRadius: new BorderRadius.circular(10),
                        ),
                        child: Column(children: [
                          // Text("a. Manajemen Risiko SPBE"),
                          // Text("b. Manajemen SDM SPBE"),
                        ]),
                      ),
                    if ((_list[index]["kategori"]) == "Layanan Publik")
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          // color: Colors.grey[300],
                          borderRadius: new BorderRadius.circular(10),
                        ),
                        child: Column(children: [
                          // Text("a. Manajemen Risiko SPBE"),
                          // Text("b. Manajemen SDM SPBE"),
                        ]),
                      ),
                    if ((_list[index]["level"]) == 2 &&
                        (_list[index]["parent"]) >= 1)
                      // if ((_list[index]["parent"]).toString() == 2)
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column(
                          children: [
                            Card(
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    child: Padding(
                                      padding: const EdgeInsets.all(.2),
                                      child: Column(
                                        children: [
                                          // Icon(
                                          //   Icons.book_outlined,
                                          //   color: Colors.blue,
                                          //   size: .1,
                                          // ),
                                          TextButton(
                                            autofocus: false,
                                            onPressed: () {
                                              Navigator.pushNamed(
                                                  context, '/list', arguments: {
                                                'kategori': _list[index]
                                                    ["kategori"]
                                              });
                                            },
                                            child: Center(
                                              child: Text(
                                                _list[index]["kategori"],
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    width: 250,
                                    height: 49,
                                    decoration: new BoxDecoration(
                                      color: Colors.blue.withOpacity(.2),
                                      // // color: new Color(0xFF333366),
                                      // shape: BoxShape.rectangle,
                                      borderRadius:
                                          new BorderRadius.circular(10),
                                      // boxShadow: <BoxShadow>[
                                      //   new BoxShadow(
                                      //       color: Colors.black12,
                                      //       blurRadius: 10,
                                      //       offset: new Offset(0.0, 2.0))
                                      // ]
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                );
              });
        },
      ),
    );
  }
}
