import 'package:flutter/material.dart';
class User {
  late String user_name;
  late String user_passw;

  User({required this.user_name,required this.user_passw});

@override
  String toString() {
    // TODO: implement toString
    return "email: $user_name , pass: $user_passw |";
  }

}