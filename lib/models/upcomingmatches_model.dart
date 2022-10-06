import 'dart:convert';

class UpcomingMatchesModel {
  String? team1;
  String? team2;
  String? dateTime;
  String? venue;
  String? status;
  String? tournamentName;
  String? winner;
  UpcomingMatchesModel({
    this.team1,
    this.team2,
    this.dateTime,
    this.venue,
    this.status,
    this.tournamentName,
    this.winner,
  });

  UpcomingMatchesModel copyWith({
    String? team1,
    String? team2,
    String? dateTime,
    String? venue,
    String? status,
    String? tournamentName,
    String? winner,
  }) {
    return UpcomingMatchesModel(
      team1: team1 ?? this.team1,
      team2: team2 ?? this.team2,
      dateTime: dateTime ?? this.dateTime,
      venue: venue ?? this.venue,
      status: status ?? this.status,
      tournamentName: tournamentName ?? this.tournamentName,
      winner: winner ?? this.winner,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'team1': team1,
      'team2': team2,
      'dateTime': dateTime,
      'venue': venue,
      'status': status,
      'tournamentName': tournamentName,
      'winner': winner,
    };
  }

  factory UpcomingMatchesModel.fromMap(Map<String, dynamic> map) {
    return UpcomingMatchesModel(
      team1: map['team1'],
      team2: map['team2'],
      dateTime: map['dateTime'],
      venue: map['venue'],
      status: map['status'],
      tournamentName: map['tournamentName'],
      winner: map['winner'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UpcomingMatchesModel.fromJson(String source) =>
      UpcomingMatchesModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UpcomingMatchesModel(team1: $team1, team2: $team2, dateTime: $dateTime, venue: $venue, status: $status, tournamentName: $tournamentName, winner: $winner)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UpcomingMatchesModel &&
        other.team1 == team1 &&
        other.team2 == team2 &&
        other.dateTime == dateTime &&
        other.venue == venue &&
        other.status == status &&
        other.tournamentName == tournamentName &&
        other.winner == winner;
  }

  @override
  int get hashCode {
    return team1.hashCode ^
        team2.hashCode ^
        dateTime.hashCode ^
        venue.hashCode ^
        status.hashCode ^
        tournamentName.hashCode ^
        winner.hashCode;
  }
}
