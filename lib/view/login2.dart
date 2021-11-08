import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_login/flutter_login.dart';

class Login2 extends StatefulWidget {
  const Login2({Key? key}) : super(key: key);

  @override
  _Login2State createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  late String email, password;
  final _key = new GlobalKey<FormState>();

  check() {
    final form = _key.currentState;
    if (form!.validate()) {
      form.save();
      login();
    }
  }

  login() async {
    final response = await http.post(
        Uri.parse("http://192.168.43.175/MSPBE_FLUTTER/login.php"),
        body: {
          "email": email,
          "password": password,
        });
    final data = jsonDecode(response.body);
    print(data);
    if (data['value'] == 1) {
      var pushNamedAndRemoveUntil = Navigator.of(context)
          .pushNamedAndRemoveUntil('/nav', (Route<dynamic> route) => false);
    } else {
      print(data);
    }
  }

  bool _secureText = false;

  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(left: 28.8, right: 28.8, top: 98.8),
          child: Form(
            key: _key,
            child: ListView(
              children: <Widget>[
                Center(
                    child: Text(
                  "LOGIN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Arial',
                      fontSize: 18),
                )),
                SizedBox(height: 40),
                TextFormField(
                  onSaved: (e) => email = e!,
                  decoration: InputDecoration(
                    labelText: "Email",
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  // validator: (e) {
                  //   if (e.isEmpty) {
                  //     return "Masukkan password";
                  //   }
                  // },
                  obscureText: _secureText,
                  onSaved: (e) => password = e!,
                  decoration: InputDecoration(
                    labelText: "Password",
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    suffixIcon: IconButton(
                      onPressed: showHide,
                      icon: Icon(_secureText
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 100, right: 100),
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.all(Radius.circular(100)),
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(Size(3, 6))),
                    onPressed: () {
                      check();
                    },
                    child: Text("Login"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 80, right: 80),
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.all(Radius.circular(7)),
                  ),
                  child: TextButton(
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(Size(3, 6))),
                    child: Text("Register"),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late String nama, email, password;
  final _key = new GlobalKey<FormState>();

  check() {
    final form = _key.currentState;
    if (form!.validate()) {
      form.save();
      register();
    }
  }

  register() async {
    final response = await http.post(
        Uri.parse("http://192.168.43.175/MSPBE_FLUTTER/register.php"),
        body: {
          "nama": nama,
          "email": email,
          "password": password,
        });
    final data = jsonDecode(response.body);
    print(data);
  }

  bool _secureText = true;

  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(left: 28.8, right: 28.8, top: 88.8),
          child: Form(
            key: _key,
            child: ListView(
              children: <Widget>[
                Center(
                    child: Text(
                  "REGISTER",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Arial',
                      fontSize: 18),
                )),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  onSaved: (e) => nama = e!,
                  decoration: InputDecoration(
                    labelText: "Nama",
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  onSaved: (e) => email = e!,
                  decoration: InputDecoration(
                    labelText: "Email",
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  // validator: (e) {
                  //   if (e.isEmpty) {
                  //     return "Masukkan password";
                  //   }
                  // },
                  obscureText: _secureText,
                  onSaved: (e) => password = e!,
                  decoration: InputDecoration(
                    labelText: "Password",
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    suffixIcon: IconButton(
                      onPressed: showHide,
                      icon: Icon(_secureText
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 100, right: 100),
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.all(Radius.circular(100)),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      check();
                    },
                    child: Text("Register"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
