import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[51],
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.white, Colors.white]),
          ),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 10, left: 29.8),
                  child: Row(
                    children: [
                      // Container(
                      //     decoration: new BoxDecoration(
                      //       boxShadow: [
                      //         //background color of box
                      //         BoxShadow(
                      //           color: Colors.white60,
                      //           blurRadius: 25.0, // soften the shadow
                      //           spreadRadius: 1.0, //extend the shadow
                      //           offset: Offset(
                      //             5.0, // Move to right 10  horizontally
                      //             5.0, // Move to bottom 10 Vertically
                      //           ),
                      //         )
                      //       ],
                      //     ),
                      //     height: 200,
                      //     width: 300,
                      //     child: Image.asset('assets/image/header.png'),
                      //     ),
                      SizedBox(width: 2)
                    ],
                  )
                  // Text(
                  //   'Sistem\nManajemen\nPengetahuan\nSPBE',
                  //   style: GoogleFonts.playfairDisplay(
                  //     // textStyle: Theme.of(context).textTheme.headline3,
                  //     fontSize: 20,
                  //     fontWeight: FontWeight.w700,
                  //   ),
                  // ),
                  ),
              Container(
                margin: EdgeInsets.only(left: 28.8, right: 28.8),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: Color(0x080a928),
                      ),
                      // child: Image.asset('assets/image/bungadesa.jpg'),
                    ),
                  ],
                ),
              ),
              Container(
                height: 210,
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
                              filter:
                                  ImageFilter.blur(sigmaY: 19.2, sigmaX: 19.2),
                              child: Container(
                                height: 169,
                                padding: EdgeInsets.only(left: 26.72),
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: <Widget>[
                                    Image.asset('assets/image/header.png'),
                                    SizedBox(width: 5),
                                    Text(
                                      "",
                                      style: GoogleFonts.lato(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                          fontSize: 16.8),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                              child: ClipRRect(
                            borderRadius: BorderRadius.circular(4.8),
                            child: BackdropFilter(
                              filter:
                                  ImageFilter.blur(sigmaY: 19.2, sigmaX: 19.2),
                              child: Container(
                                height: 169,
                                padding: EdgeInsets.only(left: 26.72),
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: <Widget>[
                                    Image.asset('assets/image/c.jpg'),
                                    SizedBox(width: 5),
                                    Text(
                                      "hai",
                                      style: GoogleFonts.lato(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                          fontSize: 16.8),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 210,
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
                              filter:
                                  ImageFilter.blur(sigmaY: 19.2, sigmaX: 19.2),
                              child: Container(
                                height: 169,
                                padding: EdgeInsets.only(left: 26.72),
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: <Widget>[
                                    Image.asset('assets/image/c.jpg'),
                                    SizedBox(width: 5),
                                    Text(
                                      "hai",
                                      style: GoogleFonts.lato(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                          fontSize: 16.8),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                              child: ClipRRect(
                            borderRadius: BorderRadius.circular(4.8),
                            child: BackdropFilter(
                              filter:
                                  ImageFilter.blur(sigmaY: 19.2, sigmaX: 19.2),
                              child: Container(
                                height: 169,
                                padding: EdgeInsets.only(left: 26.72),
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: <Widget>[
                                    Image.asset('assets/image/c.jpg'),
                                    SizedBox(width: 5),
                                    Text(
                                      "hai",
                                      style: GoogleFonts.lato(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                          fontSize: 16.8),
                                    ),
                                  ],
                                ),
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
        ),
      ),
    );
  }
}
