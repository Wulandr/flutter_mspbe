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
            gradient:
                RadialGradient(colors: [Colors.blue.shade100, Colors.white10]),
          ),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 2, left: 29.8),
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
                      SizedBox(width: 1)
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
              // Container(
              //   margin: EdgeInsets.only(left: 28.8, right: 28.8),
              //   child: Row(
              //     children: <Widget>[
              //       Container(
              //         padding: EdgeInsets.only(
              //             top: 20, right: 80, bottom: 20, left: 80),
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(9.6),
              //           color: Color(0x080a928),
              //         ),
              //         // child: Text(
              //         //   "Selamat Datang",
              //         //   style: GoogleFonts.lato(
              //         //       fontWeight: FontWeight.w400,
              //         //       color: Colors.blue.shade300,
              //         //       fontSize: 16.8),
              //         // ),
              //         // child: Image.asset('assets/image/bungadesa.jpg'),
              //       ),
              //     ],
              //   ),
              // ),

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
                                height: 300,
                                padding: EdgeInsets.only(left: 66.72),
                                // alignment: Alignment.centerLeft,
                                child: Row(
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/image/bg.png',
                                      scale: .1,
                                      fit: BoxFit.contain,
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
                                height: 300,
                                padding: EdgeInsets.only(left: 66.72),
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: <Widget>[
                                    Image.asset('assets/image/bg.png'),
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
              // Container(
              //   height: 210,
              //   child: PageView(
              //     physics: BouncingScrollPhysics(),
              //     // controller: _pageController,
              //     scrollDirection: Axis.horizontal,
              //     children: [
              //       Container(
              //         child: Stack(
              //           children: <Widget>[
              //             Positioned(
              //                 child: ClipRRect(
              //               borderRadius: BorderRadius.circular(4.8),
              //               child: BackdropFilter(
              //                 filter:
              //                     ImageFilter.blur(sigmaY: 19.2, sigmaX: 19.2),
              //                 child: Container(
              //                   height: 169,
              //                   padding: EdgeInsets.only(left: 26.72),
              //                   alignment: Alignment.centerLeft,
              //                   child: Row(
              //                     children: <Widget>[
              //                       Image.asset('assets/image/c.jpg'),
              //                       SizedBox(width: 5),
              //                       Text(
              //                         "hai",
              //                         style: GoogleFonts.lato(
              //                             fontWeight: FontWeight.w700,
              //                             color: Colors.white,
              //                             fontSize: 16.8),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //             ))
              //           ],
              //         ),
              //       ),
              //       Container(
              //         child: Stack(
              //           children: <Widget>[
              //             Positioned(
              //                 child: ClipRRect(
              //               borderRadius: BorderRadius.circular(4.8),
              //               child: BackdropFilter(
              //                 filter:
              //                     ImageFilter.blur(sigmaY: 19.2, sigmaX: 19.2),
              //                 child: Container(
              //                   height: 169,
              //                   padding: EdgeInsets.only(left: 26.72),
              //                   alignment: Alignment.centerLeft,
              //                   child: Row(
              //                     children: <Widget>[
              //                       Image.asset('assets/image/c.jpg'),
              //                       SizedBox(width: 5),
              //                       Text(
              //                         "hai",
              //                         style: GoogleFonts.lato(
              //                             fontWeight: FontWeight.w700,
              //                             color: Colors.white,
              //                             fontSize: 16.8),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //             ))
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Center(
                  // child: Text("Berbagai Inovasi Tiap OPD"),
                  ),
              Container(
                height: 110,
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
                                padding: EdgeInsets.only(left: 40.72),
                                alignment: Alignment.center,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(.2),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Icon(
                                          Icons.location_city_outlined,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("   "),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(.2),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Icon(
                                          Icons.local_florist_outlined,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ),
                                    Text("   "),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red.withOpacity(.2),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Icon(
                                          Icons.car_rental,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                    Text("   "),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.purple.withOpacity(.2),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Icon(
                                          Icons.home_work,
                                          color: Colors.purple,
                                        ),
                                      ),
                                    ),
                                    Text("   "),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.pink.withOpacity(.2),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Icon(
                                          Icons.cast_for_education,
                                          color: Colors.pink,
                                        ),
                                      ),
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
