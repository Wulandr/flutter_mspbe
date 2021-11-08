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
      body: SafeArea(
        child: Container(
          child: Text("profil"),
        ),
      ),
    );
  }
}
