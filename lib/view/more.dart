import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                          Row(
                            children: [
                              TextButton(
                                child: Text(_list[index]["id"] +
                                    ". " +
                                    _list[index]["kategori"]),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/list');
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    if ((_list[index]["level"]) == 2 &&
                        (_list[index]["parent"]) >= 1)
                      // if ((_list[index]["parent"]).toString() == 2)
                      Row(
                        children: [
                          Card(
                            child: Container(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/list',
                                      arguments: {
                                        'kategori': _list[index]["kategori"]
                                      });
                                },
                                child: Center(
                                  child: Text(
                                    _list[index]["id"] +
                                        ". " +
                                        _list[index]["kategori"],
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
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
                );
              });
        },
      ),
    );
  }
}
