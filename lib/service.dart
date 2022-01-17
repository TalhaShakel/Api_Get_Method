// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'models.dart';

// getuser()async{
//   var response = await http.get(Uri.https("jsonplaceholder.typicode.com", "users"));
//   var jasonData = jsonDecode(response.body);
//   List<usermodel> users = [ ];
//   for (var i in jasonData){
//  usermodel user =   usermodel(email: i["email"], username: i["username"]);
//   users.add(user);}
// return users;  
// }

getuser() async {
  var reponse = await http.get(
    Uri.https("jsonplaceholder.typicode.com", "users"),
  );
  var jasonData = jsonDecode(reponse.body);
  List<UserModel> userlist = [];
  for (var i in jasonData) {
    UserModel user = UserModel(
        id: i["id"],
        name: i["name"],
        username: i["username"],
        email: i["email"],
        address: i["address"]["geo"]["lat"]);
    userlist.add(user);
  }

  return userlist;
}