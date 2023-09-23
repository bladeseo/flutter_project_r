import 'package:flutter/material.dart';

import 'package:boilerplate/domain/entity/menu/menu_item.dart';

class Menu {
  // id 는 삭제시 중간에 빠지는 경우가 생길 수 있음.
  // array 의 index 로.
  // int? id;

  String title;

  String? detail;

  // String? bgColor;
  MaterialAccentColor? bgColor;

  String? selectMethod;

  // final
  List<MenuItem>? menuItems;


  Menu({
    // this.id, // 사용 안함

    required this.title,
    this.detail,
    this.bgColor,
    this.selectMethod,

    this.menuItems,
  });

  
  // to-do
  // rest api 등으로 받아서 local 에 Menu 생성하는 경우
  // menuItems 를 잘 나눠서 parsing 해얄 듯

  /*
  factory Menu.fromJson(List<dynamic> json) {
    List<MenuItem> menuItems = <MenuItem>[];
    menuItems = json.map((menuItem) => MenuItem.fromMap(menuItem)).toList();

    return Menu(
      menuItems: menuItems,
    );
  }
  */
}
