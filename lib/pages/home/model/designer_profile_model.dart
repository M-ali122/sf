// To parse this JSON data, do
//
//     final designerProfileModel = designerProfileModelFromJson(jsonString);

import 'dart:convert';

DesignerProfileModel designerProfileModelFromJson(String str) => DesignerProfileModel.fromJson(json.decode(str));

String designerProfileModelToJson(DesignerProfileModel data) => json.encode(data.toJson());

class DesignerProfileModel {
    String profileImage;
    String userName;

    DesignerProfileModel({
        required this.profileImage,
        required this.userName,
    });

    factory DesignerProfileModel.fromJson(Map<String, dynamic> json) => DesignerProfileModel(
        profileImage: json["ProfileImage"],
        userName: json["UserName"],
    );

    Map<String, dynamic> toJson() => {
        "ProfileImage": profileImage,
        "UserName": userName,
    };
}
