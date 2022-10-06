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

  Future participateInContest(String contestCode, String paymentId) async {
    final response = await http.post(
      Uri.parse(
          'https://create11.brilliantrev.com/api/user_contest_participation'),
      body: {
        'contest_code': contestCode,
        'payment_id': paymentId,
      },
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to create contest');
    }
  }

  Future<User> getUsers() async {
    final response = await http.post(
      Uri.parse('https://create11.brilliantrev.com/api/get_users'),
    );

    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
      return User.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to get Users');
    }
  }
}
