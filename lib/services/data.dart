import 'dart:convert';
import 'dart:developer';
import 'package:create11/models/contest_model.dart';
import 'package:create11/models/user.dart';
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

  Future<List> getUsersContests(String userid) async {
    var client = http.Client();
    var response = await client.get(Uri.parse(
        'https://create11.brilliantrev.com/api/get_user_contests/$userid'));
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

  Future<User> addUser(
      String fname, String lname, String username, String mobile) async {
    final response = await http.post(
      Uri.parse('https://create11.brilliantrev.com/api/add_user'),
      body: {
        'fname': fname,
        'lname': lname,
        'username': username,
        'mobile': mobile,
        'isVerified': '1'
      },
    );

    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to add User');
    }
  }

  Future<ContestModel> createContest(String contestName, String fixtureId,
      String contestLimit, String entryAmount) async {
    final response = await http.post(
      Uri.parse('https://create11.brilliantrev.com/api/add_contest'),
      body: {
        'name': contestName,
        'fixture_id': fixtureId,
        'contest_limit': contestLimit,
        'entry_amount': entryAmount
      },
    );

    if (response.statusCode == 200) {
      getContests(fixtureId);
      notifyListeners();
      return ContestModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create contest');
    }
  }

  Future participateInContest(String contestCode, String paymentId, String userId) async {
    final response = await http.post(
      Uri.parse(
          'https://create11.brilliantrev.com/api/user_contest_participation/$userId'),
      body: {
        'contest_code': contestCode,
        'payment_id': paymentId,
      },
    );

    if (response.statusCode == 200) {
      print('particpated code- 200');
      return jsonDecode(response.body);
    } else {
      print('Failed to participate contest');
      throw Exception('Failed to participate in contest');
    }
  }

  // Future<User> getUsers() async {
  //   final response = await http.post(
  //     Uri.parse('https://create11.brilliantrev.com/api/get_users'),
  //   );

  //   if (response.statusCode == 200) {
  //     print(jsonDecode(response.body));
  //     return User.fromJson(jsonDecode(response.body));
  //   } else {
  //     throw Exception('Failed to get Users');
  //   }
  // }

  Future getMatchSquad(String keyid) async {
    var client = http.Client();
    var response = await client.get(Uri.parse(
        'https://create11.brilliantrev.com/api/get_squad/$keyid'));
    var responsed = json.encode(response.body);
    var responseData = jsonDecode(responsed);

    print(responseData);

    if (response.statusCode == 200) {
      if (jsonDecode(responseData)['code'] == '200') {
        print(jsonDecode(responseData));
        return jsonDecode(responseData);
      }
    }
    return [];
  }


  Future createTeam(String userId, String fixtureId,
      List<String> playerIds, String pointsId) async {
    final response = await http.post(
      Uri.parse('https://create11.brilliantrev.com/api/create_team'),
      body: {
        'user_id': userId,
        'fixture_id': fixtureId,
        'player1_id': playerIds[0],
        'player2_id': playerIds[1],
        'player3_id': playerIds[2],
        'player4_id': playerIds[3],
        'player5_id': playerIds[4],
        'player6_id': playerIds[5],
        'player7_id': playerIds[6],
        'player8_id': playerIds[7],
        'player9_id': playerIds[8],
        'player10_id': playerIds[9],
        'player11_id': playerIds[10],
        'points_id': pointsId
      },
    );

    if (response.statusCode == 200) {
      
    } else {
      throw Exception('Failed to create contest');
    }
  }

  
  
}
