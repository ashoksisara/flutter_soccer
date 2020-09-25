import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_soccer/goal_stat.dart';
import 'package:flutter_soccer/match_tile.dart';
import 'package:flutter_soccer/soccer_model.dart';
import 'package:flutter_soccer/team_stat.dart';

Widget pageBody(List<SoccerMatch> allMatches) {
  return Column(
    children: [
      Expanded(
          flex: 2,
          child: Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  teamStat('Local Team', allMatches[0].home.logoUrl,
                      allMatches[0].home.name),
                  goalStat(allMatches[0].fixture.status.elapsedTime,
                      allMatches[0].goal.home, allMatches[0].goal.away),
                  teamStat('Visitor Team', allMatches[0].away.logoUrl, allMatches[0].away.name),

                ],
              ),
            ),
          )),
      Expanded(
          flex: 5,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xFF4373D9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                )),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('MATCHES', style: TextStyle(
                    color: Colors.white,
                    fontSize: 24
                  ),),
                  Expanded(
                      child:ListView.builder(
                          itemCount: allMatches.length,
                          itemBuilder: (context, index){
                            return matchTile(allMatches[index]);
                          }))
                ],
              ),
            ),
          )),
    ],
  );
}
