// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  dynamic id;
  dynamic name;
  dynamic email;
  dynamic phone;
  dynamic image;
  dynamic referralLink;
  dynamic referralId;
  dynamic level;
  dynamic emailVerifiedAt;
  dynamic otp;
  dynamic deviceToken;
  dynamic createdAt;
  dynamic updatedAt, password;
  dynamic token;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.image,
    this.referralLink,
    this.referralId,
    this.level,
    this.emailVerifiedAt,
    this.otp,
    this.deviceToken,
    this.createdAt,
    this.updatedAt,
    this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        image: json["image"],
        referralLink: json["referral_link"],
        referralId: json["referral_id"],
        level: json["level"],
        emailVerifiedAt: json["email_verified_at"],
        otp: json["otp"],
        deviceToken: json["device_token"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "phone": phone,
        "image": image,
        "referral_link": referralLink,
        "referral_id": referralId,
        "level": level,
        'password': password,
        "email_verified_at": emailVerifiedAt,
        "otp": otp,
        "device_token": deviceToken,
        "created_at": createdAt.toString(),
        "updated_at": updatedAt.toString(),
        "token": token,
      };
}
