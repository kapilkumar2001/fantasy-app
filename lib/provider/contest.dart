import 'dart:convert';

import 'package:create11/models/contest_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Contests with ChangeNotifier {
  List contests = [];

  Future<void> getContests(String id) async {
    var client = http.Client();
    var response = await client.get(Uri.parse(
        'https://create11.brilliantrev.com/api/getContestByFixtureId/$id'));
    var responsed = json.encode(response.body);
    var responseData = jsonDecode(responsed);

    print(responseData);

    if (response.statusCode == 200) {
      var cont = jsonDecode(responseData)['contests'];
      contests = cont.map((i) => 
           ContestModel.fromJson(i)).toList();
      // contests = cont.map((e) => ContestModel.fromJson(e as Map<String, dynamic>))
      //   .toList();
      notifyListeners();
    }
  }

  Future<void> createContest(ContestModel c) async {
    final response = await http.post(
      Uri.parse('https://create11.brilliantrev.com/api/add_contest'),
      body: {
        'name': c.contestName,
        'fixture_id': c.fixtureId,
        'contest_limit': c.contestLimit,
        'entry_amount': c.entryAmount
      },
    );
    if (response.statusCode == 200) {
      getContests(c.fixtureId!);
      notifyListeners();
    } else {
      throw Exception('Failed to create contest');
    }
  }

  // Future participateInContest(String contestCode, String paymentId) async {
  //   final response =  await http.post(
  //     Uri.parse('https://create11.brilliantrev.com/api/user_contest_participation'),
  //     body: {
  //       'contest_code': contestCode,
  //       'payment_id': paymentId,
  //     },
  //   );

  //   if(response.statusCode==200){
  //     return jsonDecode(response.body);
  //   }
  //   else{
  //     throw Exception('Failed to create contest');
  //   }
  // }

}
