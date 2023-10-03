import 'dart:async';

import 'package:boilerplate/domain/entity/menu/menu_list.dart';
import 'package:boilerplate/domain/entity/menu/menu.dart';
import 'package:boilerplate/domain/entity/menu/menu_item.dart';

abstract class MenuRepositoryLocal {
  // Menus: --------------------------------------------------------------------
  // List<Menu>? getMenus;
  List<Menu>? get menus;
  // Object? get menus;

  // List<MenuItem> getMenuById(int menuId);
  Menu? get currentMenu;
  // Object? get currentMenu;


  int? get currentMenuId;


  // 나중에 추가
  // void insertMenu(Menu menu);
  //
  // int updateMenuById(int menuId, Menu menu);
  //
  // int deleteMenuById(int menuId);


  // Menu: --------------------------------------------------------------------
  // MenuItem? getMenuItemById(int menuId, int menuItemId);

  // 나중에 추가
  // void insertMenuItem(int menuId, MenuItem menuItem);
  //
  // int updateMenuItemById(int menuId, int menuItemId, MenuItem menuItem);
  //
  // int toggleMenuItemUseById(int menuId, int menuItemId, bool value);
  //
  // int deleteMenuItemById(int menuId, int menuItemId);

}
