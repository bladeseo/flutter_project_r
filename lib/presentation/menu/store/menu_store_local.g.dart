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

  late final _$_categoryNameLocalListAtom =
      Atom(name: '_MenuStoreLocal._categoryNameLocalList', context: context);

  @override
  ObservableList<String> get _categoryNameLocalList {
    _$_categoryNameLocalListAtom.reportRead();
    return super._categoryNameLocalList;
  }

  @override
  set _categoryNameLocalList(ObservableList<String> value) {
    _$_categoryNameLocalListAtom
        .reportWrite(value, super._categoryNameLocalList, () {
      super._categoryNameLocalList = value;
    });
  }

  late final _$_categoryBgColorLocalListAtom =
      Atom(name: '_MenuStoreLocal._categoryBgColorLocalList', context: context);

  @override
  ObservableList<MaterialAccentColor> get _categoryBgColorLocalList {
    _$_categoryBgColorLocalListAtom.reportRead();
    return super._categoryBgColorLocalList;
  }

  @override
  set _categoryBgColorLocalList(ObservableList<MaterialAccentColor> value) {
    _$_categoryBgColorLocalListAtom
        .reportWrite(value, super._categoryBgColorLocalList, () {
      super._categoryBgColorLocalList = value;
    });
  }

  late final _$_menuTitleLocalListAtom =
      Atom(name: '_MenuStoreLocal._menuTitleLocalList', context: context);

  @override
  ObservableList<List<String>> get _menuTitleLocalList {
    _$_menuTitleLocalListAtom.reportRead();
    return super._menuTitleLocalList;
  }

  @override
  set _menuTitleLocalList(ObservableList<List<String>> value) {
    _$_menuTitleLocalListAtom.reportWrite(value, super._menuTitleLocalList, () {
      super._menuTitleLocalList = value;
    });
  }

  late final _$_menuDetailLocalListAtom =
      Atom(name: '_MenuStoreLocal._menuDetailLocalList', context: context);

  @override
  ObservableList<List<String>> get _menuDetailLocalList {
    _$_menuDetailLocalListAtom.reportRead();
    return super._menuDetailLocalList;
  }

  @override
  set _menuDetailLocalList(ObservableList<List<String>> value) {
    _$_menuDetailLocalListAtom.reportWrite(value, super._menuDetailLocalList,
        () {
      super._menuDetailLocalList = value;
    });
  }

  late final _$_menuUseLocalListAtom =
      Atom(name: '_MenuStoreLocal._menuUseLocalList', context: context);

  @override
  ObservableList<List<bool>> get _menuUseLocalList {
    _$_menuUseLocalListAtom.reportRead();
    return super._menuUseLocalList;
  }

  @override
  set _menuUseLocalList(ObservableList<List<bool>> value) {
    _$_menuUseLocalListAtom.reportWrite(value, super._menuUseLocalList, () {
      super._menuUseLocalList = value;
    });
  }

  late final _$_showMenuAddFormAtom =
      Atom(name: '_MenuStoreLocal._showMenuAddForm', context: context);

  @override
  bool get _showMenuAddForm {
    _$_showMenuAddFormAtom.reportRead();
    return super._showMenuAddForm;
  }

  @override
  set _showMenuAddForm(bool value) {
    _$_showMenuAddFormAtom.reportWrite(value, super._showMenuAddForm, () {
      super._showMenuAddForm = value;
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
  List<String> listCategoryNameLocal() {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.listCategoryNameLocal');
    try {
      return super.listCategoryNameLocal();
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<MaterialAccentColor> listCategoryBgColorLocal() {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.listCategoryBgColorLocal');
    try {
      return super.listCategoryBgColorLocal();
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<String> listMenuTitleLocal(int catId) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.listMenuTitleLocal');
    try {
      return super.listMenuTitleLocal(catId);
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<String> listMenuDetailLocal(int catId) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.listMenuDetailLocal');
    try {
      return super.listMenuDetailLocal(catId);
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<bool> listMenuUseLocal(int catId) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.listMenuUseLocal');
    try {
      return super.listMenuUseLocal(catId);
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool getShowMenuAddFormLocal() {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.getShowMenuAddFormLocal');
    try {
      return super.getShowMenuAddFormLocal();
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addMenuTitleLocal(int catId, String menu) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.addMenuTitleLocal');
    try {
      return super.addMenuTitleLocal(catId, menu);
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addMenuDetailLocal(int catId, String menuDetail) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.addMenuDetailLocal');
    try {
      return super.addMenuDetailLocal(catId, menuDetail);
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addMenuUseLocal(int catId, bool use) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.addMenuUseLocal');
    try {
      return super.addMenuUseLocal(catId, use);
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleShowMenuAddForm() {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.toggleShowMenuAddForm');
    try {
      return super.toggleShowMenuAddForm();
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeMenuUseLocal(int catId, int menuId, bool use) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.changeMenuUseLocal');
    try {
      return super.changeMenuUseLocal(catId, menuId, use);
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
  void changeMenuTitle(int catId, int menuId, String value) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.changeMenuTitle');
    try {
      return super.changeMenuTitle(catId, menuId, value);
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
