// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_store_local.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MenuStoreLocal on _MenuStoreLocal, Store {
  Computed<String>? _$localeComputed;

  @override
  String get locale => (_$localeComputed ??=
          Computed<String>(() => super.locale, name: '_MenuStoreLocal.locale'))
      .value;
  Computed<int>? _$current_menu_idComputed;

  @override
  int get current_menu_id =>
      (_$current_menu_idComputed ??= Computed<int>(() => super.current_menu_id,
              name: '_MenuStoreLocal.current_menu_id'))
          .value;
  Computed<MenuItemLocal>? _$current_menuComputed;

  @override
  MenuItemLocal get current_menu => (_$current_menuComputed ??=
          Computed<MenuItemLocal>(() => super.current_menu,
              name: '_MenuStoreLocal.current_menu'))
      .value;

  late final _$_menuLanguageLocalListAtom =
      Atom(name: '_MenuStoreLocal._menuLanguageLocalList', context: context);

  @override
  ObservableList<String> get _menuLanguageLocalList {
    _$_menuLanguageLocalListAtom.reportRead();
    return super._menuLanguageLocalList;
  }

  @override
  set _menuLanguageLocalList(ObservableList<String> value) {
    _$_menuLanguageLocalListAtom
        .reportWrite(value, super._menuLanguageLocalList, () {
      super._menuLanguageLocalList = value;
    });
  }

  late final _$_menuLanguageDetailLocalListAtom = Atom(
      name: '_MenuStoreLocal._menuLanguageDetailLocalList', context: context);

  @override
  ObservableList<String> get _menuLanguageDetailLocalList {
    _$_menuLanguageDetailLocalListAtom.reportRead();
    return super._menuLanguageDetailLocalList;
  }

  @override
  set _menuLanguageDetailLocalList(ObservableList<String> value) {
    _$_menuLanguageDetailLocalListAtom
        .reportWrite(value, super._menuLanguageDetailLocalList, () {
      super._menuLanguageDetailLocalList = value;
    });
  }

  late final _$_menuUseLocalListAtom =
      Atom(name: '_MenuStoreLocal._menuUseLocalList', context: context);

  @override
  ObservableList<bool> get _menuUseLocalList {
    _$_menuUseLocalListAtom.reportRead();
    return super._menuUseLocalList;
  }

  @override
  set _menuUseLocalList(ObservableList<bool> value) {
    _$_menuUseLocalListAtom.reportWrite(value, super._menuUseLocalList, () {
      super._menuUseLocalList = value;
    });
  }

  late final _$_localeAtom =
      Atom(name: '_MenuStoreLocal._locale', context: context);

  @override
  String get _locale {
    _$_localeAtom.reportRead();
    return super._locale;
  }

  @override
  set _locale(String value) {
    _$_localeAtom.reportWrite(value, super._locale, () {
      super._locale = value;
    });
  }

  late final _$_current_menu_idAtom =
      Atom(name: '_MenuStoreLocal._current_menu_id', context: context);

  @override
  int get _current_menu_id {
    _$_current_menu_idAtom.reportRead();
    return super._current_menu_id;
  }

  @override
  set _current_menu_id(int value) {
    _$_current_menu_idAtom.reportWrite(value, super._current_menu_id, () {
      super._current_menu_id = value;
    });
  }

  late final _$_current_menuAtom =
      Atom(name: '_MenuStoreLocal._current_menu', context: context);

  @override
  MenuItemLocal get _current_menu {
    _$_current_menuAtom.reportRead();
    return super._current_menu;
  }

  @override
  set _current_menu(MenuItemLocal value) {
    _$_current_menuAtom.reportWrite(value, super._current_menu, () {
      super._current_menu = value;
    });
  }

  late final _$_MenuStoreLocalActionController =
      ActionController(name: '_MenuStoreLocal', context: context);

  @override
  List<ObservableList<String>> getUpdatedMenuList() {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.getUpdatedMenuList');
    try {
      return super.getUpdatedMenuList();
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<String> listMenuLanguageLocal() {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.listMenuLanguageLocal');
    try {
      return super.listMenuLanguageLocal();
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<String> listMenuLanguageDetailLocal() {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.listMenuLanguageDetailLocal');
    try {
      return super.listMenuLanguageDetailLocal();
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<bool> listMenuUseLocal() {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.listMenuUseLocal');
    try {
      return super.listMenuUseLocal();
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addMenuLanguageLocal(String language) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.addMenuLanguageLocal');
    try {
      return super.addMenuLanguageLocal(language);
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addMenuLanguageDetailLocal(String languageDetail) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.addMenuLanguageDetailLocal');
    try {
      return super.addMenuLanguageDetailLocal(languageDetail);
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addMenuUseLocal(bool use) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.addMenuUseLocal');
    try {
      return super.addMenuUseLocal(use);
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeMenuUseLocal(int menuId, bool use) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.changeMenuUseLocal');
    try {
      return super.changeMenuUseLocal(menuId, use);
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeTitle(String value) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.changeTitle');
    try {
      return super.changeTitle(value);
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  int getCurrentMenuId() {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.getCurrentMenuId');
    try {
      return super.getCurrentMenuId();
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCurrentMenu(int menuId, bool use) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.changeCurrentMenu');
    try {
      return super.changeCurrentMenu(menuId, use);
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeMenuLanguage(int menuId, String value) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.changeMenuLanguage');
    try {
      return super.changeMenuLanguage(menuId, value);
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  String getCode() {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.getCode');
    try {
      return super.getCode();
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
locale: ${locale},
current_menu_id: ${current_menu_id},
current_menu: ${current_menu}
    ''';
  }
}
