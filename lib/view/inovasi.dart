import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';

class inovasi extends StatefulWidget {
  const inovasi({Key? key}) : super(key: key);

  @override
  _inovasiState createState() => _inovasiState();
}

class _inovasiState extends State<inovasi> {
  List _list = [];
  Future getProducts() async {
    var response =
        await http.get(Uri.parse("http://10.0.2.2:8000/api/kategori"));
    Map<String, dynamic> map = json.decode(response.body);
    List<dynamic> data = map["data"];
    _list = data;
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
      child: Column(
        children: [
          Container(
            height: 400,
            child: PageView(
              physics: BouncingScrollPhysics(),
              // controller: _pageController,
              scrollDirection: Axis.horizontal,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.orange.withOpacity(.2),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Icon(
                                            Icons.location_city_outlined,
                                            color: Colors.orange,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Kesehatan ",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.orange.withOpacity(.2),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Icon(
                                            Icons.location_city_outlined,
                                            color: Colors.orange,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Pendidikan ",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.orange.withOpacity(.2),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Icon(
                                            Icons.location_city_outlined,
                                            color: Colors.orange,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Budaya ",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.orange.withOpacity(.2),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Icon(
                                            Icons.location_city_outlined,
                                            color: Colors.orange,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Pariwisata ",
                                        style: TextStyle(fontSize: 10),
                                      ),
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.purple.withOpacity(.2),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Icon(
                                            Icons.location_city_outlined,
                                            color: Colors.purple,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Smart\nEnvirontment ",
                                        style: TextStyle(
                                          fontSize: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.purple.withOpacity(.2),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Icon(
                                            Icons.location_city_outlined,
                                            color: Colors.purple,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Smart\nSociety  ",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.purple.withOpacity(.2),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Icon(
                                            Icons.location_city_outlined,
                                            color: Colors.purple,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Smart\nEconomy ",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.purple.withOpacity(.2),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Icon(
                                            Icons.location_city_outlined,
                                            color: Colors.purple,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Smart\nGovernment ",
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.purple.withOpacity(.2),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Icon(
                                            Icons.location_city_outlined,
                                            color: Colors.purple,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Smart\nBranding ",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.purple.withOpacity(.2),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Icon(
                                            Icons.location_city_outlined,
                                            color: Colors.purple,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Smart\nLiving ",
                                        style: TextStyle(fontSize: 9),
                                      ),
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
                              Text("Layanan Publik\n"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
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
                                      Text(
                                        "Kesehatan ",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 51,
                                  ),
                                  Column(
                                    children: [
                                      Container(
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
                                      Text(
                                        "Pendidikan ",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                ],
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
          ),
        ],
      ),
    );
  }
}
