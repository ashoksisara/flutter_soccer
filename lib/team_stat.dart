import 'package:flutter/material.dart';

Widget teamStat(String team, String logourl, String teamName) {
  return Expanded(child: Column(children: [
    Text(team, style: TextStyle(
        fontSize: 18
    ),),
    SizedBox(height: 20,),
    Expanded(child: Image.network(
      logourl,
      width: 54.0,

    )
    ),
    SizedBox(height: 20,),
    Text(
      teamName,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 18
    ),),
  ],));
}