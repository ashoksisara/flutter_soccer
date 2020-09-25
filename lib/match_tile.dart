import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_soccer/soccer_model.dart';

Widget matchTile(SoccerMatch match){

  var homeGoal = match.goal.home;
  var awayGoal = match.goal.away;
  if(homeGoal == null) homeGoal = 0;
  if(awayGoal == null) awayGoal = 0;

  return Container(
    margin: EdgeInsets.symmetric(vertical: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child:Text(match.home.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16
            ),) ),
        Image.network(match.home.logoUrl, width: 36,),
        Expanded(child: Text('$homeGoal - $awayGoal',
        textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          fontSize: 16),
        )
        ),
        Image.network(match.away.logoUrl, width: 36,),
        Expanded(
            child:Text(match.away.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),) ),
      ],
    ),
  );
}