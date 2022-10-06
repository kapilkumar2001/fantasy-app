import 'dart:convert';

class User {
  String? fname;
  String? lname;
  String? username;
  String? mobile;
  String? isVerified;
  User({
    this.fname,
    this.lname,
    this.username,
    this.mobile,
    this.isVerified,
  });

  User copyWith({
    String? fname,
    String? lname,
    String? username,
    String? mobile,
    String? isVerified,
  }) {
    return User(
      fname: fname ?? this.fname,
      lname: lname ?? this.lname,
      username: username ?? this.username,
      mobile: mobile ?? this.mobile,
      isVerified: isVerified ?? this.isVerified,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'fname': fname,
      'lname': lname,
      'username': username,
      'mobile': mobile,
      'isVerified': isVerified,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      fname: map['fname'],
      lname: map['lname'],
      username: map['username'],
      mobile: map['mobile'],
      isVerified: map['isVerified'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      fname: json['fname'],
      lname: json['lname'],
      username: json['username'],
      mobile: json['mobile'],
      isVerified: json['isVerified'],
    );
  }

  @override
  String toString() {
    return 'User(fname: $fname, lname: $lname, username: $username, mobile: $mobile, isVerified: $isVerified)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.fname == fname &&
        other.lname == lname &&
        other.username == username &&
        other.mobile == mobile &&
        other.isVerified == isVerified;
  }

  @override
  int get hashCode {
    return fname.hashCode ^
        lname.hashCode ^
        username.hashCode ^
        mobile.hashCode ^
        isVerified.hashCode;
  }
}
