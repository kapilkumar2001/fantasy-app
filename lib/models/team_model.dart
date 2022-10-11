import 'dart:convert';

class TeamModel {
  String UserId;
  String FixtureId;
  String PlayerId1;
  String PlayerId2;
  String PlayerId3;
  String PlayerId4;
  String PlayerId5;
  String PlayerId6;
  String PlayerId7;
  String PlayerId8;
  String PlayerId9;
  String PlayerId10;
  String PlayerId11;
  String PointsId;
  TeamModel({
    required this.UserId,
    required this.FixtureId,
    required this.PlayerId1,
    required this.PlayerId2,
    required this.PlayerId3,
    required this.PlayerId4,
    required this.PlayerId5,
    required this.PlayerId6,
    required this.PlayerId7,
    required this.PlayerId8,
    required this.PlayerId9,
    required this.PlayerId10,
    required this.PlayerId11,
    required this.PointsId,
  });

  TeamModel copyWith({
    String? UserId,
    String? FixtureId,
    String? PlayerId1,
    String? PlayerId2,
    String? PlayerId3,
    String? PlayerId4,
    String? PlayerId5,
    String? PlayerId6,
    String? PlayerId7,
    String? PlayerId8,
    String? PlayerId9,
    String? PlayerId10,
    String? PlayerId11,
    String? PointsId,
  }) {
    return TeamModel(
      UserId: UserId ?? this.UserId,
      FixtureId: FixtureId ?? this.FixtureId,
      PlayerId1: PlayerId1 ?? this.PlayerId1,
      PlayerId2: PlayerId2 ?? this.PlayerId2,
      PlayerId3: PlayerId3 ?? this.PlayerId3,
      PlayerId4: PlayerId4 ?? this.PlayerId4,
      PlayerId5: PlayerId5 ?? this.PlayerId5,
      PlayerId6: PlayerId6 ?? this.PlayerId6,
      PlayerId7: PlayerId7 ?? this.PlayerId7,
      PlayerId8: PlayerId8 ?? this.PlayerId8,
      PlayerId9: PlayerId9 ?? this.PlayerId9,
      PlayerId10: PlayerId10 ?? this.PlayerId10,
      PlayerId11: PlayerId11 ?? this.PlayerId11,
      PointsId: PointsId ?? this.PointsId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'UserId': UserId,
      'FixtureId': FixtureId,
      'PlayerId1': PlayerId1,
      'PlayerId2': PlayerId2,
      'PlayerId3': PlayerId3,
      'PlayerId4': PlayerId4,
      'PlayerId5': PlayerId5,
      'PlayerId6': PlayerId6,
      'PlayerId7': PlayerId7,
      'PlayerId8': PlayerId8,
      'PlayerId9': PlayerId9,
      'PlayerId10': PlayerId10,
      'PlayerId11': PlayerId11,
      'PointsId': PointsId,
    };
  }

  factory TeamModel.fromMap(Map<String, dynamic> map) {
    return TeamModel(
      UserId: map['UserId'] ?? '',
      FixtureId: map['FixtureId'] ?? '',
      PlayerId1: map['PlayerId1'] ?? '',
      PlayerId2: map['PlayerId2'] ?? '',
      PlayerId3: map['PlayerId3'] ?? '',
      PlayerId4: map['PlayerId4'] ?? '',
      PlayerId5: map['PlayerId5'] ?? '',
      PlayerId6: map['PlayerId6'] ?? '',
      PlayerId7: map['PlayerId7'] ?? '',
      PlayerId8: map['PlayerId8'] ?? '',
      PlayerId9: map['PlayerId9'] ?? '',
      PlayerId10: map['PlayerId10'] ?? '',
      PlayerId11: map['PlayerId11'] ?? '',
      PointsId: map['PointsId'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory TeamModel.fromJson(String source) => TeamModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TeamModel(UserId: $UserId, FixtureId: $FixtureId, PlayerId1: $PlayerId1, PlayerId2: $PlayerId2, PlayerId3: $PlayerId3, PlayerId4: $PlayerId4, PlayerId5: $PlayerId5, PlayerId6: $PlayerId6, PlayerId7: $PlayerId7, PlayerId8: $PlayerId8, PlayerId9: $PlayerId9, PlayerId10: $PlayerId10, PlayerId11: $PlayerId11, PointsId: $PointsId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is TeamModel &&
      other.UserId == UserId &&
      other.FixtureId == FixtureId &&
      other.PlayerId1 == PlayerId1 &&
      other.PlayerId2 == PlayerId2 &&
      other.PlayerId3 == PlayerId3 &&
      other.PlayerId4 == PlayerId4 &&
      other.PlayerId5 == PlayerId5 &&
      other.PlayerId6 == PlayerId6 &&
      other.PlayerId7 == PlayerId7 &&
      other.PlayerId8 == PlayerId8 &&
      other.PlayerId9 == PlayerId9 &&
      other.PlayerId10 == PlayerId10 &&
      other.PlayerId11 == PlayerId11 &&
      other.PointsId == PointsId;
  }

  @override
  int get hashCode {
    return UserId.hashCode ^
      FixtureId.hashCode ^
      PlayerId1.hashCode ^
      PlayerId2.hashCode ^
      PlayerId3.hashCode ^
      PlayerId4.hashCode ^
      PlayerId5.hashCode ^
      PlayerId6.hashCode ^
      PlayerId7.hashCode ^
      PlayerId8.hashCode ^
      PlayerId9.hashCode ^
      PlayerId10.hashCode ^
      PlayerId11.hashCode ^
      PointsId.hashCode;
  }
}
