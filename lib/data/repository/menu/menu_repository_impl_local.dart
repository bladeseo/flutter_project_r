import 'dart:async';

import 'package:boilerplate/domain/entity/menu/menu_list.dart';
import 'package:boilerplate/domain/entity/menu/menu.dart';
import 'package:boilerplate/domain/repository/menu/menu_repository_local.dart';
import 'package:boilerplate/data/sharedpref/shared_preference_helper.dart';

class MenuRepositoryImplLocal extends MenuRepositoryLocal {
  // shared pref object
  final SharedPreferenceHelper _sharedPrefsHelper;

  // constructor
  MenuRepositoryImplLocal(this._sharedPrefsHelper);


  @override
  // Object? get menus => _sharedPrefsHelper.menus;
  List<Menu>? get menus => _sharedPrefsHelper.menus;

  @override
  // Object? get currentMenu => _sharedPrefsHelper.currentMenu;
  Menu? get currentMenu => _sharedPrefsHelper.currentMenu;

  @override
  int? get currentMenuId => _sharedPrefsHelper.currentMenuId;

  @override
  Future<void> changeCurrentMenuId(int menuId) =>
      _sharedPrefsHelper.changeCurrentMenuId(menuId);


  /*
  // Theme: --------------------------------------------------------------------
  @override
  Future<void> toggleUseYn(bool value) =>
      _sharedPrefsHelper.toggleUseYn(value);

  @override
  bool get isUse => _sharedPrefsHelper.isUse;

  // Language: -----------------------------------------------------------------
  @override
  Future<void> changeTitle(String value) =>
      _sharedPrefsHelper.changeTitle(value);

  @override
  String? get currentTitle => _sharedPrefsHelper.currentTitle;


  @override
  Future<void> changeCurrentMenu(int menuId, bool use) =>
      _sharedPrefsHelper.changeCurrentMenu(menuId, use);

  @override
  Future<void> changeMenuLanguage(int menuId, String value) =>
      _sharedPrefsHelper.changeMenuLanguage(menuId, value);
  */

}
