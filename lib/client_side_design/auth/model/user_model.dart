// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

List<UserModel> userModelFromJson(String str) =>
    List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  dynamic fullname;
  dynamic username;
  dynamic email;
  dynamic phone;
  dynamic token;
  dynamic id;
  dynamic bio;
  dynamic emailVerifiedAt;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic accountType;
  dynamic password;

  UserModel(
      {this.fullname,
      this.username,
      this.email,
      this.phone,
      this.token,
      this.id,
      this.bio,
      this.createdAt,
      this.updatedAt,
      this.accountType,
      this.password});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        fullname: json["fullname"],
        username: json["username"],
        email: json["email"],
        phone: json["phone"],
        token: json["token"],
        id: json["id"],
        bio: json["bio"],
        updatedAt: json["updated_at"],
        accountType: json["account_type"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "fullname": fullname,
        "username": username,
        "email": email,
        "phone": phone,
        "token": token,
        "id": id,
        "bio": bio,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "account_type": accountType,
        "password": password,
      };
}
