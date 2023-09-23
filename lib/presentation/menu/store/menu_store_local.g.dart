// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_store_local.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MenuStoreLocal on _MenuStoreLocal, Store {
  Computed<int>? _$current_menu_idComputed;

  @override
  int get current_menu_id =>
      (_$current_menu_idComputed ??= Computed<int>(() => super.current_menu_id,
              name: '_MenuStoreLocal.current_menu_id'))
          .value;

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

  late final _$_menusAtom =
      Atom(name: '_MenuStoreLocal._menus', context: context);

  @override
  ObservableList<Menu> get _menus {
    _$_menusAtom.reportRead();
    return super._menus;
  }

  @override
  set _menus(ObservableList<Menu> value) {
    _$_menusAtom.reportWrite(value, super._menus, () {
      super._menus = value;
    });
  }

  late final _$_MenuStoreLocalActionController =
      ActionController(name: '_MenuStoreLocal', context: context);

  @override
  ObservableList<Menu> getMenus() {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.getMenus');
    try {
      return super.getMenus();
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  Menu? getMenuById(int menuId) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.getMenuById');
    try {
      return super.getMenuById(menuId);
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  void insertMenu(Menu menu) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.insertMenu');
    try {
      return super.insertMenu(menu);
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  int updateMenuById(int menuId, Menu menu) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.updateMenuById');
    try {
      return super.updateMenuById(menuId, menu);
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  int deleteMenuById(int menuId) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.deleteMenuById');
    try {
      return super.deleteMenuById(menuId);
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  MenuItem? getMenuItemById(int menuId, int menuItemId) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.getMenuItemById');
    try {
      return super.getMenuItemById(menuId, menuItemId);
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  void insertMenuItem(int menuId, MenuItem menuItem) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.insertMenuItem');
    try {
      return super.insertMenuItem(menuId, menuItem);
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  int updateMenuItemById(int menuId, int menuItemId, MenuItem menuItem) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.updateMenuItemById');
    try {
      return super.updateMenuItemById(menuId, menuItemId, menuItem);
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  int toggleMenuItemUseById(int menuId, int menuItemId, bool value) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.toggleMenuItemUseById');
    try {
      return super.toggleMenuItemUseById(menuId, menuItemId, value);
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  int deleteMenuItemById(int menuId, int menuItemId) {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.deleteMenuItemById');
    try {
      return super.deleteMenuItemById(menuId, menuItemId);
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
  String toString() {
    return '''
current_menu_id: ${current_menu_id}
    ''';
  }
}
