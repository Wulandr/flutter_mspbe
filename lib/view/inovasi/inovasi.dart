import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'package:manajemenspbe/view/forum/list.dart';

class inovasi extends StatefulWidget {
  const inovasi({Key? key}) : super(key: key);

  @override
  _inovasiState createState() => _inovasiState();
}

class _inovasiState extends State<inovasi> {
  List _list = [];
  List bidang = ["Kesehatan", "Pendidikan", "Budaya", "Pariwisata"];
  List elemen = [
    "Environtment",
    "Society",
    "Economy",
    "Government",
    "Branding",
    "Living"
  ];
  List layanan = ["Layanan Administrasi", "Layanan Publik"];

  Future getInovasi() async {
    var response =
        await http.get(Uri.parse("http://10.0.2.2:8000/api/inovasi"));
    Map<String, dynamic> map = json.decode(response.body);
    List<dynamic> data = map["data"];
    _list = data;
    print(_list[0]["nama"]);
  }

  // kategori umum = bidang inovasi
  Future getBidangInovasi() async {
    var response =
        await http.get(Uri.parse("http://10.0.2.2:8000/api/kategoriumum"));
    Map<String, dynamic> map = json.decode(response.body);
    List<dynamic> data = map["data"];
    _list = data;
  }

  @override
  Widget build(BuildContext context) {
    getInovasi();
    return Container(
      decoration: BoxDecoration(
        gradient:
            RadialGradient(colors: [Colors.blue.shade100, Colors.white10]),
      ),
      margin: EdgeInsets.only(left: 28.8, right: 28.8, top: 28.8),
      child: ListView(
        physics: BouncingScrollPhysics(),
        // controller: _pageController,
        scrollDirection: Axis.vertical,
        children: [
          Container(
            child: Stack(
              children: <Widget>[
                Positioned(
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.8),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaY: 19.2, sigmaX: 19.2),
                    child: Column(
                      children: [
                        Text("Bidang Inovasi\n"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            for (int i = 0; i < bidang.length; i++)
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.orange.withOpacity(.2),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Icon(
                                        Icons.location_city_outlined,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/listKonten', arguments: {
                                          'bidang': bidang[i],
                                          'id': i
                                        });
                                      },
                                      child: Text(
                                        bidang[i],
                                        style: TextStyle(fontSize: 10),
                                      ))
                                ],
                              ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text("Elemen Smart City\n"),
                        Container(
                          margin: EdgeInsets.only(left: 50),
                          child: Column(
                            children: [
                              Row(
                                children: <Widget>[
                                  for (int i = 0; i < (elemen.length / 2); i++)
                                    Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.purple.withOpacity(.2),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Icon(
                                              Icons.location_city_outlined,
                                              size: 35,
                                              color: Colors.purple,
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, '/listKonten2',
                                                arguments: {
                                                  'bidang': elemen[i],
                                                  'id': i
                                                });
                                          },
                                          child: Text(
                                            elemen[i],
                                            style: TextStyle(
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  for (int i = 3; i < elemen.length; i++)
                                    Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.purple.withOpacity(.2),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Icon(
                                              Icons.location_city_outlined,
                                              size: 35,
                                              color: Colors.purple,
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, '/listKonten2',
                                                arguments: {
                                                  'bidang': elemen[i],
                                                  'id': i
                                                });
                                          },
                                          child: Text(
                                            elemen[i],
                                            style: TextStyle(
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text("Layanan Publik\n"),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              for (int i = 0; i < layanan.length; i++)
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      // margin: EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                        color: Colors.red.withOpacity(.2),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Icon(
                                          Icons.location_city_outlined,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/listKonten3',
                                            arguments: {
                                              'bidang': layanan[i],
                                              'id': i
                                            });
                                      },
                                      child: Text(
                                        layanan[i],
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              SizedBox(
                                height: 51,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
