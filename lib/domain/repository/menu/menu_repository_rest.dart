import 'dart:async';

import 'package:boilerplate/domain/entity/menu/menu.dart';
import 'package:boilerplate/domain/entity/menu/menu_list.dart';

abstract class MenuRepositoryRest {
  Future<MenuList> getMenus();

  Future<List<Menu>> findMenuById(int id);

  Future<int> insert(Menu menu);

  Future<int> update(Menu menu);

  Future<int> delete(Menu menu);
}
