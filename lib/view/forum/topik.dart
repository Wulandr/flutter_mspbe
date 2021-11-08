import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manajemenspbe/view/nav.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class topik extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List _list = [];

  Future getProducts() async {
    var response =
        await http.get(Uri.parse("http://10.0.2.2:8000/api/komentar"));
    Map<String, dynamic> map = json.decode(response.body);
    List<dynamic> data = map["data"];
    _list = data;
  }

  Future getTopik() async {
    var response = await http.get(Uri.parse("http://10.0.2.2:8000/api/topik"));
    Map<String, dynamic> map = json.decode(response.body);
    List<dynamic> data = map["data"];
    _list = data;
  }

  // Future getImage() async {
  //   var response =
  //       await http.get(Uri.parse("http://10.0.2.2:8000/api/topik/showimage"));
  //   Map<String, dynamic> map = json.decode(response.body);
  //   List<dynamic> data = map["data"];
  //   _list = data;
  // }

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;

    if (arguments != null)
      print((arguments['id']).toString() + ". " + arguments['judultopik']);
    var a = arguments['id'];

    print(a);

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.only(top: 59, left: 25, right: 24),
          child: Container(
            child: Column(
              children: [
                FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    padding: EdgeInsets.only(left: 2),
                    child: Icon(Icons.arrow_back)),
                // SizedBox(height: 16),
                // Text("Manajemen Resiko SPBE -> Topik 1 ..."),
                Card(
                  child: Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/topik');
                      },
                      child: Center(
                        child: Text(
                          arguments['judultopik'],
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    width: 280,
                    height: 30,
                    decoration: new BoxDecoration(
                        color: new Color(0xFF333366),
                        shape: BoxShape.rectangle,
                        borderRadius: new BorderRadius.circular(3),
                        boxShadow: <BoxShadow>[
                          new BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: new Offset(0.0, 10.0))
                        ]),
                  ),
                ),

                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 200.0,
                        child: Builder(builder: (context) {
                          return FutureBuilder(
                            future: getTopik(),
                            builder: (context, snapshot) {
                              return ListView.builder(
                                itemCount: _list.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      if ((_list[index]["id"]).toString() ==
                                          arguments['id'])
                                        ListTile(
                                          title: Text(
                                              (_list[index]["id"]).toString() +
                                                  " " +
                                                  _list[index]["isi"]),
                                          onTap: null,
                                        ),
                                      // if ((_list[index]["id"]).toString() ==
                                      //     arguments['id'])
                                      //   ListTile(
                                      //     title: Image.asset(
                                      //       _list[index]["foto_url"],
                                      //       scale: 2,
                                      //     ),
                                      //   )
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

                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 200.0,
                        child: Image.network(
                            'http://10.0.2.2:8000/api/topik/showimage/$a'),
                      ),
                    ),
                  ],
                ),

                // Image.asset(
                //   "assets/image/bungadesa.jpg",
                //   scale: 2,
                // ),
                Text("\n Komentar"),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 180.0,
                        child: Builder(builder: (context) {
                          return FutureBuilder(
                            future: getProducts(),
                            builder: (context, snapshot) {
                              return ListView.builder(
                                itemCount: _list.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      if ((_list[index]["id_topik"])
                                              .toString() ==
                                          arguments['id'])
                                        ListTile(
                                          title: Container(
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFff444),
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Text(
                                              (_list[index]["id_topik"])
                                                      .toString() +
                                                  ". " +
                                                  _list[index]["isi"],
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ),
                                          onTap: null,
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
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Isi Komentar',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Validate will return true if the form is valid, or false if
                          // the form is invalid.
                          if (_formKey.currentState!.validate()) {
                            // Process data.
                          }
                        },
                        child: const Text('Kirim'),
                      ),
                    ],
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

// class list extends StatelessWidget {
//   const list({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: <Widget>[
//         ListTile(
//           title: Text('Black'),
//         ),
//         ListTile(
//           title: Text('White'),
//         ),
//         ListTile(
//           title: Text('Grey'),
//         ),
//       ],
//     );
//   }
// }
