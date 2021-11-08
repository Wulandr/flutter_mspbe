import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Login',
          ),
          Form(
              child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    labelText: 'Username', hintText: 'Enter your username'),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
