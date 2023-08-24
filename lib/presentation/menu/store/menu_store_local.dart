import 'package:flutter/material.dart';

import 'package:boilerplate/core/stores/error/error_store.dart';

// import 'package:boilerplate/domain/entity/language/Language.dart';
import 'package:boilerplate/domain/entity/menu/menu_item_local.dart';

import 'package:boilerplate/domain/repository/menu/menu_repository_local.dart';
import 'package:mobx/mobx.dart';

part 'menu_store_local.g.dart';

class MenuStoreLocal = _MenuStoreLocal with _$MenuStoreLocal;

abstract class _MenuStoreLocal with Store {
  static const String TAG = "MenuStoreLocal";

  // repository instance
  final MenuRepositoryLocal _repository;

  // store for handling errors
  final ErrorStore errorStore;

  // supported languages
  // List<MenuItemLocal> menuItemLocalList = [
  //   MenuItemLocal(id: 1, code: 'KR', locale: 'ko', language: 'Korean', use: true),
  //   MenuItemLocal(id: 2, code: 'US', locale: 'en', language: 'English', use: true),
  //   MenuItemLocal(id: 3, code: 'DK', locale: 'da', language: 'Danish', use: false),
  //   MenuItemLocal(id: 4, code: 'ES', locale: 'es', language: 'España', use: true),
  // ];

  @observable
  ObservableList<MenuItemLocal> menuItemLocalList = <MenuItemLocal>[].asObservable();

  // @observable
  // ListView listViewMenuItemLocal;

  @action
  void listMenuItemLocal() {
    menuItemLocalList.add(MenuItemLocal(id: 1, code: 'KR', locale: 'ko', language: 'Korean', use: true));
    menuItemLocalList.add(MenuItemLocal(id: 2, code: 'US', locale: 'en', language: 'English', use: true));
    menuItemLocalList.add(MenuItemLocal(id: 3, code: 'DK', locale: 'da', language: 'Danish', use: false));
    menuItemLocalList.add(MenuItemLocal(id: 4, code: 'ES', locale: 'es', language: 'España', use: true));
  }

  // constructor:---------------------------------------------------------------
  _MenuStoreLocal(this._repository, this.errorStore) {
    init();
  }

  // store variables:-----------------------------------------------------------
  @observable
  String _locale = "en";

  @computed
  String get locale => _locale;


  @observable
  int _current_menu_id = 0;

  @computed
  int get current_menu_id => _current_menu_id;

  @observable
  MenuItemLocal _current_menu = MenuItemLocal(id: 0, code: '', locale: '', language: '', use: false);

  @computed
  MenuItemLocal get current_menu => _current_menu;

  // actions:-------------------------------------------------------------------
  @action
  void changeTitle(String value) {
    _locale = value;
    _repository.changeTitle(value).then((_) {
      // write additional logic here
    });
  }

  @action
  int getCurrentMenuId() {
    return _current_menu_id;
  }

  @action
  void changeCurrentMenu(int menuId, bool use) {
    print('@ changeCurrentMenu()');
    print('language : ' + menuItemLocalList[menuId].language.toString());
    print('menuId : ' + menuId.toString());
    print('use : ' + use.toString());

    _current_menu_id = menuId;
    _current_menu = menuItemLocalList[menuId];

    _current_menu.use = use;


    menuItemLocalList[menuId].use = use;
    /*
    _repository.changeCurrentMenu(menuId, use).then((_) {
      // write additional logic here
    });
    */
  }

  @action
  void changeMenuLanguage(int menuId, String value) {
    print('@ changeMenuLanguage()');
    print('language : ' + menuItemLocalList[menuId].language.toString());
    print('menuId : ' + menuId.toString());

    _current_menu_id = menuId;
    _current_menu = menuItemLocalList[menuId];


    menuItemLocalList[menuId].language = value;
  }

  @action
  String getCode() {
    var code;

    if (_locale == 'en') {
      code = "US";
    } else if (_locale == 'da') {
      code = "DK";
    } else if (_locale == 'es') {
      code = "ES";
    }

    return code;
  }

  @action
  String? getMenuItemLocalList() {
    return menuItemLocalList[menuItemLocalList
            .indexWhere((language) => language.locale == _locale)]
        .language;
  }

  // general:-------------------------------------------------------------------
  void init() async {
    // getting current language from shared preference
    if (_repository.currentTitle != null) {
      _locale = _repository.currentTitle!;
    }

    listMenuItemLocal();
  }

  // dispose:-------------------------------------------------------------------
  @override
  dispose() {}
}
