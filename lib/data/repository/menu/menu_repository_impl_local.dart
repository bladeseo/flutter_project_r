import 'dart:async';

import 'package:boilerplate/domain/repository/menu/menu_repository_local.dart';
import 'package:boilerplate/data/sharedpref/shared_preference_helper.dart';

class MenuRepositoryImplLocal extends MenuRepositoryLocal {
  // shared pref object
  final SharedPreferenceHelper _sharedPrefsHelper;

  // constructor
  MenuRepositoryImplLocal(this._sharedPrefsHelper);

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
}
