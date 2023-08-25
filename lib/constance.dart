import 'package:flutter/material.dart';

const kPrimyColor = Color(0xff100B20);
// ignore: constant_identifier_names
const Gtfamilyfont = "GT";

String getauthors(List<String> authors) {
  String result = "";
  for (var element in authors) {
    result += "$element & ";
  }
  return result.substring(0, result.length - 2);
}
void customsnakbar({required context,required String text}) {
   ScaffoldMessenger.of(context)
      .showSnackBar( SnackBar(content: Text(text)));
}