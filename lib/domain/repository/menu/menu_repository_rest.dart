import 'dart:async';

import 'package:boilerplate/domain/entity/menu/menu_rest.dart';
import 'package:boilerplate/domain/entity/menu/menu_rest_list.dart';

abstract class MenuRepositoryRest {
  Future<MenuList> getMenus();

  Future<List<MenuRest>> findMenuById(int id);

  Future<int> insert(MenuRest menu);

  Future<int> update(MenuRest menu);

  Future<int> delete(MenuRest menu);
}
