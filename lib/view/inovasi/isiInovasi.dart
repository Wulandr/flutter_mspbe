// import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:manajemenspbe/view/nav.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class isiInovasi extends StatefulWidget {
  const isiInovasi({Key? key}) : super(key: key);

  @override
  _isiInovasiState createState() => _isiInovasiState();
}

class _isiInovasiState extends State<isiInovasi> {
  late String isi;
  final _formKey = GlobalKey<FormState>();
  List _list = [];
  Future getInovasi() async {
    var response =
        await http.get(Uri.parse("http://10.0.2.2:8000/api/inovasi"));
    Map<String, dynamic> map = json.decode(response.body);
    List<dynamic> data = map["data"];
    _list = data;
    print(_list[0]["nama"]);
  }

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;

    if (arguments != null) print((arguments['bidang']));
    var a = arguments['bidang'];
    var id = arguments['id'].toString();
    print(a + " : " + id);

    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      arguments['bidang'],
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
          backgroundColor: Colors.blue.shade300,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.only(top: 10, left: 25, right: 24),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 600.0,
                        width: 800,
                        child: Builder(builder: (context) {
                          return FutureBuilder(
                            future: getInovasi(),
                            builder: (context, snapshot) {
                              return ListView.builder(
                                itemCount: _list.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      if (_list[index]["nama"] ==
                                          arguments["bidang"])
                                        Column(
                                          children: [
                                            Container(
                                              child: Image.network(
                                                'http://10.0.2.2:8000/api/inovasi/showimage/1',
                                                width: 250,
                                                height: 250,
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      new BorderRadius.circular(
                                                          20),
                                                  color: Colors.blue[50],
                                                  boxShadow: <BoxShadow>[
                                                    new BoxShadow(
                                                        color: Colors
                                                            .blue.shade100,
                                                        blurRadius: 10,
                                                        offset: new Offset(
                                                            5.0, 10.0))
                                                  ]),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(15.0),
                                                child: Text(
                                                  _list[index]["deskripsi"],
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                    ],
                                  );
                                },
                              );
                            },
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
