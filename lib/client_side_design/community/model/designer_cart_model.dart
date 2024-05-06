// To parse this JSON data, do
//
//     final designerCartModel = designerCartModelFromJson(jsonString);

import 'dart:convert';

DesignerCartModel designerCartModelFromJson(String str) => DesignerCartModel.fromJson(json.decode(str));

String designerCartModelToJson(DesignerCartModel data) => json.encode(data.toJson());

class DesignerCartModel {
    String profileImage;
    String userName;
    String time;
    String disc;
    String secondDis;
    String image;

    DesignerCartModel({
        required this.profileImage,
        required this.userName,
        required this.time,
        required this.disc,
        required this.secondDis,
        required this.image,
    });

    factory DesignerCartModel.fromJson(Map<String, dynamic> json) => DesignerCartModel(
        profileImage: json["ProfileImage"],
        userName: json["UserName"],
        time: json["Time"],
        secondDis: json["secondDis"],
        disc: json["disc"],
        image: json["Image"],
    );

    Map<String, dynamic> toJson() => {
        "ProfileImage": profileImage,
        "UserName": userName,
        "Time": time,
        "disc": disc,
        "secondDis": secondDis,
        "Image": image,
    };
}
