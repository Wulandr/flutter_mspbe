import 'package:flutter/material.dart';
import 'topik.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Forum extends StatefulWidget {
  const Forum({Key? key}) : super(key: key);

  @override
  _ForumState createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  List _list = [];
  Future getProducts() async {
    var response =
        await http.get(Uri.parse("http://10.0.2.2:8000/api/kategori/"));
    // final data = await json.decode(response.body);
    Map<String, dynamic> map = json.decode(response.body);
    List<dynamic> data = map["data"];
    // print(data[0]["kategori"]);
    // print(data);
    _list = data;
    // return _list;
    // return json.decode(response.body);
  }

  // List _items = ["Manajemen Resiko SPBE", "Manajemen SDM SPBE"];
  List _items2 = ["Aduan Masyarakat", "Satu Data", "Produk Hukum"];
  String _value = "Manajemen Resiko SPBE";
  String _value2 = "Aduan Masyarakat";
  String h = "kategori";
  int i = 1;

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.only(left: 28.8, right: 28.8, top: 28.8),
        child: Column(
          children: [
            Row(
              children: [
                TextButton(
                  child: Text("MANAJEMEN SPBE"),
                  onPressed: () {
                    Navigator.pushNamed(context, '/list');
                  },
                ),
                // DropdownButton<String>(
                //     value: _value,
                //     icon: Icon(Icons.arrow_drop_down_circle_outlined),
                //     dropdownColor: Colors.blue[100],
                //     items: _items
                //         .map<DropdownMenuItem<String>>((a) => DropdownMenuItem(
                //               child: TextButton(
                //                 child: Text(
                //                   a,
                //                   style: TextStyle(fontSize: 10),
                //                 ),
                //                 onPressed: () {
                //                   Navigator.pushNamed(context, '/list');
                //                 },
                //               ),
                //               value: a,
                //             ))
                //         .toList(),
                //     // onTap: () {
                //     //   Navigator.pushNamed(context, '/home');
                //     // },
                //     onChanged: (value) {
                //       setState(() {
                //         _value = value!;
                //       });
                //     }),
              ],
            ),
            Row(
              children: [
                Card(
                  child: Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/list');
                      },
                      child: Center(
                        child: Text(
                          "Managemen Resiko SPBE",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    width: 280,
                    height: 30,
                    decoration: new BoxDecoration(
                        color: new Color(0xFF333366),
                        shape: BoxShape.rectangle,
                        borderRadius: new BorderRadius.circular(3),
                        boxShadow: <BoxShadow>[
                          new BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: new Offset(0.0, 10.0))
                        ]),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Card(
                  child: Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/list');
                      },
                      child: Center(
                        child: Text(
                          "Managemen SDM SPBE",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    width: 280,
                    height: 30,
                    decoration: new BoxDecoration(
                        color: new Color(0xFF333366),
                        shape: BoxShape.rectangle,
                        borderRadius: new BorderRadius.circular(3),
                        boxShadow: <BoxShadow>[
                          new BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: new Offset(0.0, 10.0))
                        ]),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                TextButton(
                  child: Text("LAYANAN PUBLIK SPBE"),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
                // DropdownButton<String>(
                //     value: _value2,
                //     icon: Icon(Icons.arrow_drop_down_circle_outlined),
                //     dropdownColor: Colors.blue[100],
                //     items: _items2
                //         .map<DropdownMenuItem<String>>((a) => DropdownMenuItem(
                //               child: Text(a, style: TextStyle(fontSize: 10)),
                //               value: a,
                //             ))
                //         .toList(),
                //     onChanged: (value2) {
                //       setState(() {
                //         _value = value2!;
                //       });
                //     }),
              ],
            ),
            Row(
              children: [
                Card(
                  child: Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/list');
                      },
                      child: Center(
                        child: Text(
                          "Aduan Masyarakat",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    width: 280,
                    height: 30,
                    decoration: new BoxDecoration(
                        color: new Color(0xFF333366),
                        shape: BoxShape.rectangle,
                        borderRadius: new BorderRadius.circular(3),
                        boxShadow: <BoxShadow>[
                          new BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: new Offset(0.0, 10.0))
                        ]),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Card(
                  child: Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/list');
                      },
                      child: Center(
                        child: Text(
                          "Satu Data",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    width: 280,
                    height: 30,
                    decoration: new BoxDecoration(
                        color: new Color(0xFF333366),
                        shape: BoxShape.rectangle,
                        borderRadius: new BorderRadius.circular(3),
                        boxShadow: <BoxShadow>[
                          new BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: new Offset(0.0, 10.0))
                        ]),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Card(
                  child: Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/list');
                      },
                      child: Center(
                        child: Text(
                          "Produk Hukum",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    width: 280,
                    height: 30,
                    decoration: new BoxDecoration(
                        color: new Color(0xFF333366),
                        shape: BoxShape.rectangle,
                        borderRadius: new BorderRadius.circular(3),
                        boxShadow: <BoxShadow>[
                          new BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: new Offset(0.0, 10.0))
                        ]),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
