import 'dart:async';

abstract class MenuRepositoryLocal {
  // Theme: --------------------------------------------------------------------
  Future<void> toggleUseYn(bool value);

  bool get isUse;


  // Language: -----------------------------------------------------------------
  Future<void> changeTitle(String value);

  String? get currentTitle;

  Future<void> changeCurrentMenu(int menuId, bool use);

  Future<void> changeMenuLanguage(int menuId, String value);
}
