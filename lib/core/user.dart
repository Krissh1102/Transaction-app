// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  //final String id;
  final String? name;
  final String phone;
  final String role;
  // final DateTime createdAt;
  // final int v;

  User({
    // required this.id,
    required this.name,
    required this.phone,
    required this.role,
    //  required this.createdAt,
    // required this.v,
  });

  User copyWith({
    //  String? id,
    String? name,
    String? phone,
    String? role,
    // DateTime? createdAt,
    // int? v,
  }) =>
      User(
        // id: id ?? this.id,
        name: name ?? this.name,
        phone: phone ?? this.phone,
        role: role ?? this.role,
        // createdAt: createdAt ?? this.createdAt,
        //  v: v ?? this.v,
      );

  factory User.fromJson(Map<String, dynamic> json) => User(
        //   id: json["_id"],
        name: json['name'],
        phone: json["phone"],
        role: json["role"],
        //   createdAt: DateTime.parse(json["createdAt"]),
        //   v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        //  "_id": id,
        "phone": phone,
        "role": role,
        //   "name": name,
        //  "createdAt": createdAt.toIso8601String(),
        //  "__v": v,
      };
}
