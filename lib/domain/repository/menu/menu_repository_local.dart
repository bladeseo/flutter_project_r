import 'dart:async';

abstract class MenuRepositoryLocal {
  // Theme: --------------------------------------------------------------------
  Future<void> toggleUseYn(bool value);

  bool get isUse;

  // Language: -----------------------------------------------------------------
  Future<void> changeTitle(String value);

  String? get currentTitle;
}
