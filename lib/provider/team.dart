import 'dart:convert';

import 'package:create11/models/team_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Teams with ChangeNotifier {
  
  Future<void> createTeam(TeamModel t) async {
    final response = await http.post(
      Uri.parse('https://create11.brilliantrev.com/api/create_team'),
      body: {
        'user_id' : t.UserId,
        'fixture_id' : t.FixtureId,
        'player1_id': t.PlayerId1,
        'player2_id': t.PlayerId2,
        'player3_id': t.PlayerId3,
        'player4_id': t.PlayerId4,
        'player5_id': t.PlayerId5,
        'player6_id': t.PlayerId6,
        'player7_id': t.PlayerId7,
        'player8_id': t.PlayerId8,
        'player9_id': t.PlayerId9,
        'player10_id': t.PlayerId10,
        'player11_id': t.PlayerId11,
        'points_id': t.PointsId
      },
    );
    if (response.statusCode == 200) {
      notifyListeners();
    } else {
      throw Exception('Failed to create contest');
    }
  }

}