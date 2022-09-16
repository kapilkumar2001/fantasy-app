import 'dart:convert';
import 'dart:developer';
import 'package:create11/models/contest.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Data extends ChangeNotifier {
  Future<List> getUpcomingMatches() async {
    var client = http.Client();
    var response = await client.get(
        Uri.parse('https://create11.brilliantrev.com/api/upcomming_matches'));
    var responsed = json.encode(response.body);
    var responseData = jsonDecode(responsed);

    print(responseData);

    if (response.statusCode == 200) {
      if (jsonDecode(responseData)['code'] == '200') {
        print(jsonDecode(responseData));
        return jsonDecode(responseData)['matches'];
      }
    }
    return [];
  }

  Future<List> getContests(String id) async {
    var client = http.Client();
    var response = await client.get(Uri.parse(
        'https://create11.brilliantrev.com/api/getContestByFixtureId/$id'));
    var responsed = json.encode(response.body);
    var responseData = jsonDecode(responsed);

    print(responseData);

    if (response.statusCode == 200) {
      if (jsonDecode(responseData)['code'] == '200') {
        print(jsonDecode(responseData));
        return jsonDecode(responseData)['contests'];
      }
    }
    return [];
  }

  Future<Contest> createContest(String contestName, String fixtureId, String contestLimit, String entryAmount) async {
    final response =  await http.post(
      Uri.parse('https://create11.brilliantrev.com/api/add_contest'),
      body: {
        'name': contestName,
        'fixture_id': fixtureId,
        'contest_limit': contestLimit,
        'entry_amount': entryAmount
      },
    );

    if(response.statusCode==200){
      getContests(fixtureId);
      notifyListeners();
      return Contest.fromJson(jsonDecode(response.body));
    }
    else{
      throw Exception('Failed to create contest');
    }
  }
}
