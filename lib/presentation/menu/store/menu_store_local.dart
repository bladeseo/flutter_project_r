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

  // supported languages
  // @observable
  // List<String> menuLanguageLocalList = [
  //   'Korean',
  //   'English',
  //   'Danish',
  //   'España',
  // ].asObservable();


  // category
  // name, icon, bgcolor
  @observable
  ObservableList<String> _categoryNameLocalList = <String>['한식', '중식', '일식'].asObservable();

  @observable
  ObservableList<MaterialAccentColor> _categoryBgColorLocalList = <MaterialAccentColor>[Colors.redAccent, Colors.blueAccent, Colors.greenAccent].asObservable();


  // menu
  @observable
  ObservableList<String> _menuLanguageLocalList = <String>['Korean', 'English', 'Danish'].asObservable();

  @observable
  ObservableList<String> _menuLanguageDetailLocalList = <String>['K Pop', 'Yankee', '덴마크 우유'].asObservable();

  @observable
  ObservableList<bool> _menuUseLocalList = <bool>[true, true, false].asObservable();



  @action
  List<String> listCategoryNameLocal() {
    return _categoryNameLocalList;
  }

  @action
  List<MaterialAccentColor> listCategoryBgColorLocal() {
    return _categoryBgColorLocalList;
  }


  // menuList.add(menuLanguageLocalList);


  // @observable
  // ListView listViewMenuItemLocal;


  // 이거는 안 되는 듯?
  @observable
  bool _showMenuAddForm = false;


  @action
  List<String> listMenuLanguageLocal() {
    // menuItemLocalList.add(MenuItemLocal(id: 1, code: 'KR', locale: 'ko', language: 'Korean', use: true));
    // menuItemLocalList.add(MenuItemLocal(id: 2, code: 'US', locale: 'en', language: 'English', use: true));
    // menuItemLocalList.add(MenuItemLocal(id: 3, code: 'DK', locale: 'da', language: 'Danish', use: false));
    // menuItemLocalList.add(MenuItemLocal(id: 4, code: 'ES', locale: 'es', language: 'España', use: true));

    return _menuLanguageLocalList;
  }

  // @action
  // List<ObservableList<String>> getUpdatedMenuList() {
  //   List<ObservableList<String>> list = [];
  //   list.add(_menuLanguageLocalList);
  //   return list;
  // }

  @action
  List<String> listMenuLanguageDetailLocal() {
    return _menuLanguageDetailLocalList;
  }

  @action
  List<bool> listMenuUseLocal() {
    return _menuUseLocalList;
  }

  @action
  bool getShowMenuAddFormLocal() {
    return _showMenuAddForm;
  }


  @action
  void addMenuLanguageLocal(String language) {
    _menuLanguageLocalList.add(language);
  }

  @action
  void addMenuLanguageDetailLocal(String languageDetail) {
    _menuLanguageDetailLocalList.add(languageDetail);
  }

  @action
  void addMenuUseLocal(bool use) {
    _menuUseLocalList.add(use);
  }


  @action
  void toggleShowMenuAddForm() {
    _showMenuAddForm = !_showMenuAddForm;

    print('_showMenuAddForm : ' + _showMenuAddForm.toString());
  }


  @action
  void changeMenuUseLocal(int menuId, bool use) {
    print('===== changeMenuUseLocal =====');

    print('menuId : ' + menuId.toString());
    print('use : ' + use.toString());

    _menuUseLocalList[menuId] = use;

    print('_menuUseLocalList : ' + _menuUseLocalList.toString());

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
    print('language : ' + _menuLanguageLocalList[menuId]);
    print('menuId : ' + menuId.toString());
    print('use : ' + use.toString());

    _current_menu_id = menuId;
    // _current_menu = menuItemLocalList[menuId];

    // _current_menu.use = use;


    // menuItemLocalList[menuId].use = use;

    /*
    _repository.changeCurrentMenu(menuId, use).then((_) {
      // write additional logic here
    });
    */
  }

  @action
  void changeMenuLanguage(int menuId, String value) {
    print('@ changeMenuLanguage()');
    print('menuId : ' + menuId.toString());
    print('language : ' + value);

    _current_menu_id = menuId;
    // _current_menu_language = menuLanguageLocalList[menuId];


    _menuLanguageLocalList[menuId] = value;
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

  // @action
  // String? getMenuItemLocalList() {
  //   return menuItemLocalList[menuItemLocalList
  //           .indexWhere((language) => language.locale == _locale)]
  //       .language;
  // }

  // general:-------------------------------------------------------------------
  void init() async {
    // getting current language from shared preference
    if (_repository.currentTitle != null) {
      _locale = _repository.currentTitle!;
    }

    // listMenuItemLocal();
  }

  // dispose:-------------------------------------------------------------------
  @override
  dispose() {}
}
