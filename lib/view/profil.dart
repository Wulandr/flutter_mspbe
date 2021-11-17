import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profil extends StatelessWidget {
  const profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[51],
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient:
                RadialGradient(colors: [Colors.blue.shade100, Colors.white10]),
          ),
          margin: EdgeInsets.only(left: 28.8, right: 28.8, top: 28.8),
          child: Column(
            children: [
              Text(
                "Profil\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/image/target.jpg',
                          fit: BoxFit.cover,
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "Username : Si Nama User",
                                  ),
                                  Text("Name     : Sinamauser"),
                                  Text("Address  : Surakarta"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "\n\nUbah ?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                        child: Column(
                      children: [
                        Form(
                          child: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                    hintText: 'Username',
                                    hintStyle: TextStyle(fontSize: 11)),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: 'Name',
                                  hintStyle: TextStyle(fontSize: 11),
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: 'Address',
                                  hintStyle: TextStyle(fontSize: 11),
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: 'Telp',
                                  hintStyle: TextStyle(fontSize: 11),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
