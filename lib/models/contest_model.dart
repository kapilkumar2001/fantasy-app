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
      'contestName': contestName,
      'fixtureId': fixtureId,
      'entryAmount': entryAmount,
      'contestLimit': contestLimit,
      'contestId': contestId,
      'contestCode': contestCode,
    };
  }

  factory ContestModel.fromMap(Map<String, dynamic> map) {
    return ContestModel(
      contestName: map['contestName'],
      fixtureId: map['fixtureId'],
      entryAmount: map['entryAmount'],
      contestLimit: map['contestLimit'],
      contestId: map['contestId'],
      contestCode: map['contestCode'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ContestModel.fromJson(Map<String, dynamic> json) {
    return ContestModel(
      contestName: json['contestName'],
      fixtureId: json['fixtureId'],
      entryAmount: json['entryAmount'],
      contestLimit: json['contestLimit'],
      contestId: json['contestId'],
      contestCode: json['contestCode'],
    );
  }

  @override
  String toString() {
    return 'Contest(contestName: $contestName, fixtureId: $fixtureId, entryAmount: $entryAmount, contestLimit: $contestLimit, contestId: $contestId, contestCode: $contestCode)';
  }

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
