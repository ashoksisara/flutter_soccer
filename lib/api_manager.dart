import 'dart:convert';

import 'package:flutter_soccer/soccer_model.dart';
import 'package:http/http.dart';


class SoccerApi {

  final String apiurl = 'https://v3.football.api-sports.io/fixtures?season=2020&league=39';
  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': 'af4286df379659c4f0da7dc8b2311da0'
  };

  Future<List<SoccerMatch>> getAllMatches() async {
    Response response = await get(apiurl, headers: headers);
    var body;
    if (response.statusCode == 200) {
      body = jsonDecode(response.body);
      List<dynamic> matchesList = body['response'];
      print('api service $body');
      List<SoccerMatch> matches = matchesList.map((dynamic item) => SoccerMatch.fromJson(item)).toList();
      return matches;
    }
  }
}