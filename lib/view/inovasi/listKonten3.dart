// PAGE 2 : elemen smart city

// import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:manajemenspbe/view/nav.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class listKonten3 extends StatefulWidget {
  const listKonten3({Key? key}) : super(key: key);

  @override
  _listKonten3State createState() => _listKonten3State();
}

class _listKonten3State extends State<listKonten3> {
  //write komentar
  List _list = [];
  Future getInovasi() async {
    var response =
        await http.get(Uri.parse("http://10.0.2.2:8000/api/inovasi"));
    Map<String, dynamic> map = json.decode(response.body);
    List<dynamic> data = map["data"];
    _list = data;
    print(_list[0]["nama"]);
  }

  Future getLayanan() async {
    var response =
        await http.get(Uri.parse("http://10.0.2.2:8000/api/layanan"));
    Map<String, dynamic> map = json.decode(response.body);
    List<dynamic> data = map["data"];
    _list = data;
    // print(_list[0]["nama"]);
  }

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    // print((arguments['bidang'] + "." + arguments['id']).toString());
    String a = arguments['bidang'].toString();
    String b = (arguments['id'] + 1).toString();
    print(a + " = " + b);

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    a,
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
            padding: const EdgeInsets.only(top: 5, left: 25, right: 24),
            child: Column(children: [
              Container(
                height: 400,
                margin: EdgeInsets.all(40),
                child: FutureBuilder(
                  future: getInovasi(),
                  builder: (context, snapshot) {
                    return ListView.builder(
                        itemCount: _list.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              if ((_list[index]["layanan_spbe"]).toString() ==
                                  a)
                                Container(
                                  width: 300,
                                  decoration: BoxDecoration(
                                    color: Colors.blue.withOpacity(.2),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.app_registration_rounded,
                                          size: 35,
                                          color: Colors.blue.withOpacity(0.5),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, '/isiInovasi',
                                                arguments: {
                                                  'bidang': _list[index]["nama"]
                                                });
                                          },
                                          child: Text(
                                            _list[index]["nama"],
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.blue[900]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          );
                        });
                  },
                ),
              ),
            ])),
      ),
    );
  }
}
