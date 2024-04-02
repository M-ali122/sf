import 'dart:convert';

import 'package:flutter_svg/svg.dart';
import 'package:sf_app/resources/icon/icon.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class PopUpMenuData {
final List<PopupMenuModel> popupmenudata =[
  PopupMenuModel(
    menu: 'Share Product', icon: Appicons.sendBorder),
    PopupMenuModel(menu: 'Size guide', icon: Appicons.paperBorder),
    PopupMenuModel(menu: 'Message designer', icon: Appicons.chatBorder)
];

}
// To parse this JSON data, do
//
//     final popupMenuModel = popupMenuModelFromJson(jsonString);



PopupMenuModel popupMenuModelFromJson(String str) => PopupMenuModel.fromJson(json.decode(str));

String popupMenuModelToJson(PopupMenuModel data) => json.encode(data.toJson());

class PopupMenuModel {
    String menu;
    String icon;

    PopupMenuModel({
        required this.menu,
        required this.icon,
    });

    factory PopupMenuModel.fromJson(Map<String, dynamic> json) => PopupMenuModel(
        menu: json["menu"],
        icon: json["icon"],
    );

    Map<String, dynamic> toJson() => {
        "menu": menu,
        "icon": icon,
    };
}
