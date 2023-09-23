import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:boilerplate/domain/entity/menu/menu.dart';

import 'constants/preferences.dart';

class SharedPreferenceHelper {
  // shared pref instance
  final SharedPreferences _sharedPreference;

  // constructor
  SharedPreferenceHelper(this._sharedPreference);

  // General Methods: ----------------------------------------------------------
  Future<String?> get authToken async {
    return _sharedPreference.getString(Preferences.auth_token);
  }

  Future<bool> saveAuthToken(String authToken) async {
    return _sharedPreference.setString(Preferences.auth_token, authToken);
  }

  Future<bool> removeAuthToken() async {
    return _sharedPreference.remove(Preferences.auth_token);
  }

  // Login:---------------------------------------------------------------------
  Future<bool> get isLoggedIn async {
    return _sharedPreference.getBool(Preferences.is_logged_in) ?? false;
  }

  Future<bool> saveIsLoggedIn(bool value) async {
    return _sharedPreference.setBool(Preferences.is_logged_in, value);
  }

  // Theme:------------------------------------------------------
  bool get isDarkMode {
    return _sharedPreference.getBool(Preferences.is_dark_mode) ?? false;
  }

  Future<void> changeBrightnessToDark(bool value) {
    return _sharedPreference.setBool(Preferences.is_dark_mode, value);
  }

  // Language:---------------------------------------------------
  String? get currentLanguage {
    return _sharedPreference.getString(Preferences.current_language);
  }

  Future<void> changeLanguage(String language) {
    return _sharedPreference.setString(Preferences.current_language, language);
  }


  // Menu:------------------------------------------------------
  Object? get menus {
    return _sharedPreference.get(Preferences.menus);
  }


  Future<void> changeCurrentMenuId(int menuId) {
    return _sharedPreference.setInt(Preferences.current_menu_id, menuId);
  }

  Object? get currentMenu {
    return _sharedPreference.get(Preferences.current_menu);
  }

  Future<void> addMenu(Object menu) {
    // _sharedPreference.get(Preferences.menus)
    // return _sharedPreference.setInt(Preferences.current_menu_id, menuId);
  }


  /*
  bool get isUse {
    return _sharedPreference.getBool(Preferences.is_use) ?? false;
  }

  Future<void> toggleUseYn(bool value) {
    return _sharedPreference.setBool(Preferences.is_use, value);
  }

  String? get currentTitle {
    return _sharedPreference.getString(Preferences.current_title);
  }

  Future<void> changeTitle(String title) {
    return _sharedPreference.setString(Preferences.current_title, title);
  }



  Future<void> changeMenuLanguage(int menuId, String value) {
    return _sharedPreference.setString(Preferences.current_language, value);
  }
  */
}