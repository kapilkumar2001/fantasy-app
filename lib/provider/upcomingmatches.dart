import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:create11/models/upcomingmatches_model.dart';

class UpcomingMatches with ChangeNotifier{
  List<UpcomingMatchesModel> upcomingMatches = [];

  Future<void> getUpcomingMatches() async {
    var client = http.Client();
    var response = await client.get(
        Uri.parse('https://create11.brilliantrev.com/api/upcomming_matches'));
    var responsed = json.encode(response.body);
    var responseData = jsonDecode(responsed);

    print(responseData);

    if (response.statusCode == 200) {
        print(jsonDecode(responseData));
        upcomingMatches =  jsonDecode(responseData)['matches'];
    }
  }


}