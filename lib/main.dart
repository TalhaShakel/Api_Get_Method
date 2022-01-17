// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:flutter_application_13/models.dart';

import 'service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FutureBuilder(
          future: getuser(),
          builder: (context, AsyncSnapshot snapshot){
            if (snapshot.data == null){
              return Center(child: CircularProgressIndicator());
            }else{
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index){
                  return ListTile(
                    leading: Text("${snapshot.data[index].id}"),
                        title: Text(snapshot.data[index].name),
                        subtitle: Text(
                            "User Name:${snapshot.data[index].username} Address${snapshot.data[index].address}"),
                  );

              });
            }
          }),
      ),
    );
  }
}