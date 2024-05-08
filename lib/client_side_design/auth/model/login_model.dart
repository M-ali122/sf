// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

List<LoginModel> loginModelFromJson(String str) => List<LoginModel>.from(json.decode(str).map((x) => LoginModel.fromJson(x)));

String loginModelToJson(List<LoginModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LoginModel {
    dynamic id;
    dynamic fullname;
    dynamic email;
    dynamic phone;
    dynamic image;
    dynamic username;
    dynamic subscribedToNewsletters;
    dynamic termsAndConditionAgreement;
    dynamic fcmToken;
    dynamic accountStatus;
    dynamic bio;
    dynamic emailVerifiedAt;
    dynamic createdAt;
    dynamic updatedAt;
    dynamic accountType;
    dynamic token;
    dynamic password;

    LoginModel({
      this.id,
      this.fullname,
      this.email,
      this.phone,
      this.image,
      this.username,
      this.subscribedToNewsletters,
      this.termsAndConditionAgreement,
      this.fcmToken,
      this.accountStatus,
      this.bio,
      this.emailVerifiedAt,
      this.createdAt,
      this.updatedAt,
      this.accountType,
      this.token,
      this.password
    });

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        id: json["id"],
        fullname: json["fullname"],
        email: json["email"],
        phone: json["phone"],
        image: json["image"],
        username: json["username"],
        subscribedToNewsletters: json["subscribed_to_newsletters"],
        termsAndConditionAgreement: json["terms_and_condition_agreement"],
        fcmToken: json["fcm_token"],
        accountStatus: json["account_status"],
        bio: json["bio"],
        emailVerifiedAt: json["email_verified_at"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        accountType: json["account_type"],
        token: json["token"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "fullname": fullname,
        "email": email,
        "phone": phone,
        "image": image,
        "username": username,
        "subscribed_to_newsletters": subscribedToNewsletters,
        "terms_and_condition_agreement": termsAndConditionAgreement,
        "fcm_token": fcmToken,
        "account_status": accountStatus,
        "bio": bio,
        "email_verified_at": emailVerifiedAt,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "account_type": accountType,
        "token": token,
        "password" : password,
    };
}
