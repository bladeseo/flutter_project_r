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
  // to-do 마지막 Cat. 의 링크는 추가가 되도록
  @observable
  ObservableList<String> _categoryNameLocalList = <String>['한식', '중식', '일식', '분식', '야식', '+'].asObservable();

  @observable
  ObservableList<MaterialAccentColor> _categoryBgColorLocalList = <MaterialAccentColor>[
    Colors.redAccent, Colors.blueAccent, Colors.orangeAccent, Colors.pinkAccent, Colors.indigoAccent,
    Colors.purpleAccent, Colors.greenAccent, Colors.tealAccent, Colors.cyanAccent
  ].asObservable();
  // ObservableList<Color> _categoryBgColorLocalList = <Color>[Colors.red, Colors.blue, Colors.green].asObservable();


  @action
  List<String> listCategoryNameLocal() {
    return _categoryNameLocalList;
  }

  @action
  // List<Color> listCategoryBgColorLocal() {
  List<MaterialAccentColor> listCategoryBgColorLocal() {
    return _categoryBgColorLocalList;
  }


  // Menus
  @observable
  ObservableList<List<String>> _menuTitleLocalList = <List<String>>[
    ['Korean', 'English', 'Danish'],
    ['Korean2', 'English2', 'Danish2'],
    ['Korean3', 'English3', 'Danish3'],
    [],
    []
  ].asObservable();

  @observable
  ObservableList<List<String>> _menuDetailLocalList = <List<String>>[
    ['111', '111', '111'],
    ['222', '222', '222'],
    ['333', '333', '333'],
    [],
    []
  ].asObservable();

  @observable
  ObservableList<List<bool>> _menuUseLocalList = <List<bool>>[
    [true, true, false],
    [true, false, false],
    [false, true, false],
    [],
    [],
  ].asObservable();


  // menuList.add(menuLanguageLocalList);


  // @observable
  // ListView listViewMenuItemLocal;


  // 이거는 안 되는 듯?
  @observable
  bool _showMenuAddForm = false;


  // menuItemLocalList.add(MenuItemLocal(id: 1, code: 'KR', locale: 'ko', language: 'Korean', use: true));
  // menuItemLocalList.add(MenuItemLocal(id: 2, code: 'US', locale: 'en', language: 'English', use: true));
  // menuItemLocalList.add(MenuItemLocal(id: 3, code: 'DK', locale: 'da', language: 'Danish', use: false));
  // menuItemLocalList.add(MenuItemLocal(id: 4, code: 'ES', locale: 'es', language: 'España', use: true));


  @action
  List<String> listMenuTitleLocal(int catId) {
    return _menuTitleLocalList[catId];
  }

  // @action
  // List<ObservableList<String>> getUpdatedMenuList() {
  //   List<ObservableList<String>> list = [];
  //   list.add(_menuLanguageLocalList);
  //   return list;
  // }

  @action
  List<String> listMenuDetailLocal(int catId) {
    return _menuDetailLocalList[catId];
  }

  @action
  List<bool> listMenuUseLocal(int catId) {
    return _menuUseLocalList[catId];
  }


  @action
  bool getShowMenuAddFormLocal() {
    return _showMenuAddForm;
  }


  @action
  void addMenuTitleLocal(int catId, String menu) {
    _menuTitleLocalList[catId].add(menu);
  }

  @action
  void addMenuDetailLocal(int catId, String menuDetail) {
    _menuDetailLocalList[catId].add(menuDetail);
  }

  @action
  void addMenuUseLocal(int catId, bool use) {
    _menuUseLocalList[catId].add(use);
  }


  @action
  void toggleShowMenuAddForm() {
    _showMenuAddForm = !_showMenuAddForm;

    print('_showMenuAddForm : ' + _showMenuAddForm.toString());
  }


  @action
  void changeMenuUseLocal(int catId, int menuId, bool use) {
    print('===== changeMenuUseLocal =====');

    print('catId : ' + catId.toString());
    print('menuId : ' + menuId.toString());
    print('use : ' + use.toString());

    _menuUseLocalList[catId][menuId] = use;

    print('_menuUseLocalList[' + catId.toString() + '] : ' + _menuUseLocalList[catId].toString());

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

  /*
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
  */

  @action
  void changeMenuTitle(int catId, int menuId, String value) {
    print('@ changeMenuLanguage()');

    print('catId : ' + catId.toString());
    print('menuId : ' + menuId.toString());
    print('language : ' + value);

    _current_menu_id = menuId;
    // _current_menu_language = menuLanguageLocalList[menuId];


    _menuTitleLocalList[catId][menuId] = value;
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
