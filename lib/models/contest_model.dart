import 'dart:convert';

class ContestModel {
  String? contestName;
  String? fixtureId;
  String? entryAmount;
  String? contestLimit;
  String? contestId;
  String? contestCode;
  ContestModel({
    this.contestName,
    this.fixtureId,
    this.entryAmount,
    this.contestLimit,
    this.contestId,
    this.contestCode,
  });

  ContestModel copyWith({
    String? contestName,
    String? fixtureId,
    String? entryAmount,
    String? contestLimit,
    String? contestId,
    String? contestCode,
  }) {
    return ContestModel(
      contestName: contestName ?? this.contestName,
      fixtureId: fixtureId ?? this.fixtureId,
      entryAmount: entryAmount ?? this.entryAmount,
      contestLimit: contestLimit ?? this.contestLimit,
      contestId: contestId ?? this.contestId,
      contestCode: contestCode ?? this.contestCode,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': contestName,
      'fixture_id': fixtureId,
      'entry_amount': entryAmount,
      'contest_limit': contestLimit,
      'c_id': contestId,
      'contest_code': contestCode,
    };
  }

  factory ContestModel.fromMap(Map<String, dynamic> map) {
    return ContestModel(
      contestName: map['name'],
      fixtureId: map['fixture_id'],
      entryAmount: map['entry_amount'],
      contestLimit: map['contest_limit'],
      contestId: map['c_id'],
      contestCode: map['contest_code'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ContestModel.fromJson(Map<String, dynamic> json) {
    return ContestModel(
      contestName: json['name'],
      fixtureId: json['fixture_id'],
      entryAmount: json['entry_amount'],
      contestLimit: json['contest_limit'],
      contestId: json['c_id'],
      contestCode: json['contest_code'],
    );
  }

  // @override
  // String toString() {
  //   return 'Contest(contestName: $contestName, fixtureId: $fixtureId, entryAmount: $entryAmount, contestLimit: $contestLimit, contestId: $contestId, contestCode: $contestCode)';
  // }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ContestModel &&
        other.contestName == contestName &&
        other.fixtureId == fixtureId &&
        other.entryAmount == entryAmount &&
        other.contestLimit == contestLimit &&
        other.contestId == contestId &&
        other.contestCode == contestCode;
  }

  @override
  int get hashCode {
    return contestName.hashCode ^
        fixtureId.hashCode ^
        entryAmount.hashCode ^
        contestLimit.hashCode ^
        contestId.hashCode ^
        contestCode.hashCode;
  }
}
