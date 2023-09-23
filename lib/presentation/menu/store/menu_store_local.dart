import 'package:flutter/material.dart';

import 'package:boilerplate/core/stores/error/error_store.dart';

import 'package:boilerplate/domain/entity/menu/menu_list.dart';
import 'package:boilerplate/domain/entity/menu/menu.dart';
import 'package:boilerplate/domain/entity/menu/menu_item.dart';

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


  /*
  List<MenuItem> menuItemList1 = [
    MenuItem(id: 1, title: 'Korean', detail: 'KR', isUse: true),
    MenuItem(id: 2, title: 'English', detail: 'US', isUse: true),
    MenuItem(id: 3, title: 'Danish', detail: 'DK', isUse: false),
    MenuItem(id: 4, title: 'España', detail: 'ES', isUse: true),
  ];

  List<MenuItem> menuItemList2 = [
    MenuItem(id: 1, title: '한식', detail: '국밥', isUse: true),
    MenuItem(id: 2, title: '양식', detail: '돈가스', isUse: true),
    MenuItem(id: 3, title: '중식', detail: '자장면', isUse: false),
    MenuItem(id: 4, title: '태국', detail: '볶음밥', isUse: true),
    MenuItem(id: 5, title: '베트남', detail: '쌀국수', isUse: true),
  ];

  List<MenuItem> menuItemList3 = [
    MenuItem(id: 1, title: '삼성', detail: '스마트폰', isUse: true),
    MenuItem(id: 2, title: 'LG', detail: '모니터', isUse: true),
    MenuItem(id: 3, title: '필립스', detail: '다리미', isUse: false),
    MenuItem(id: 4, title: '브라운', detail: '면도기', isUse: false),
    MenuItem(id: 5, title: 'GE', detail: '세탁기', isUse: true),
  ];


  Menu menu1 = Menu(id: 1, title: '언어', detail: 'language', menuItems: [
    MenuItem(id: 1, title: 'Korean', detail: 'KR', isUse: true),
    MenuItem(id: 2, title: 'English', detail: 'US', isUse: true),
    MenuItem(id: 3, title: 'Danish', detail: 'DK', isUse: false),
    MenuItem(id: 4, title: 'España', detail: 'ES', isUse: true),
  ]);
  */




  //
  //
  // // category
  // // name, icon, bgcolor
  // // to-do 마지막 Cat. 의 링크는 추가가 되도록
  // @observable
  // ObservableList<String> _categoryNameLocalList = <String>['한식', '중식', '일식', '분식', '야식', '+'].asObservable();
  //
  // @observable
  // ObservableList<MaterialAccentColor> _categoryBgColorLocalList = <MaterialAccentColor>[
  //   Colors.redAccent, Colors.blueAccent, Colors.orangeAccent, Colors.pinkAccent, Colors.indigoAccent,
  //   Colors.purpleAccent, Colors.greenAccent, Colors.tealAccent, Colors.cyanAccent
  // ].asObservable();
  // // ObservableList<Color> _categoryBgColorLocalList = <Color>[Colors.red, Colors.blue, Colors.green].asObservable();
  //
  //
  //
  //
  // @action
  // List<String> listCategoryNameLocal() {
  //   return _categoryNameLocalList;
  // }
  //
  // @action
  // // List<Color> listCategoryBgColorLocal() {
  // List<MaterialAccentColor> listCategoryBgColorLocal() {
  //   return _categoryBgColorLocalList;
  // }
  //
  //

  //
  // // Menus
  // @observable
  // ObservableList<List<String>> _menuTitleLocalList = <List<String>>[
  //   ['Korean', 'English', 'Danish'],
  //   ['Korean2', 'English2', 'Danish2'],
  //   ['Korean3', 'English3', 'Danish3'],
  //   [],
  //   []
  // ].asObservable();
  //
  // @observable
  // ObservableList<List<String>> _menuDetailLocalList = <List<String>>[
  //   ['111', '111', '111'],
  //   ['222', '222', '222'],
  //   ['333', '333', '333'],
  //   [],
  //   []
  // ].asObservable();
  //
  // @observable
  // ObservableList<List<bool>> _menuUseLocalList = <List<bool>>[
  //   [true, true, false],
  //   [true, false, false],
  //   [false, true, false],
  //   [],
  //   [],
  // ].asObservable();
  //




  // constructor:---------------------------------------------------------------
  _MenuStoreLocal(this._repository, this.errorStore) {
    init();
  }

  // store variables:-----------------------------------------------------------
  @observable
  int _current_menu_id = 0;

  @computed
  int get current_menu_id => _current_menu_id;

  @observable
  bool _showMenuAddForm = false;



  // @observable
  // MenuItemLocal _current_menu = MenuItemLocal(id: 0, code: '', locale: '', language: '', use: false);
  //
  // @computed
  // MenuItemLocal get current_menu => _current_menu;

  // @action
  // void changeTitle(String value) {
  //   _locale = value;
  //   _repository.changeTitle(value).then((_) {
  //     // write additional logic here
  //   });
  // }




  // 수동 refresh 하는 경우에는
  // @observable 안 걸어도 될 것 같긴 함 -.-a
  @observable
  ObservableList<Menu> _menus = [
    Menu(title: '언어', detail: 'language', bgColor: Colors.redAccent,
        menuItems: [
          MenuItem(title: 'Korean', detail: 'KR', isUse: true),
          MenuItem(title: 'English', detail: 'US', isUse: true),
          MenuItem(title: 'Danish', detail: 'DK', isUse: false),
          MenuItem(title: 'España', detail: 'ES', isUse: true),
        ]
    ),
    Menu(title: '음식', detail: 'food', bgColor: Colors.blueAccent,
        menuItems: [
          MenuItem(title: '한식', detail: '국밥', isUse: true),
          MenuItem(title: '양식', detail: '돈가스', isUse: true),
          MenuItem(title: '중식', detail: '자장면', isUse: false),
          MenuItem(title: '태국', detail: '볶음밥', isUse: true),
          MenuItem(title: '베트남', detail: '쌀국수', isUse: true),
        ]
    ),
    Menu(title: '전자제품', detail: 'elec...', bgColor: Colors.orangeAccent,
        menuItems: [
          MenuItem(title: '삼성', detail: '스마트폰', isUse: true),
          MenuItem(title: 'LG', detail: '모니터', isUse: true),
          MenuItem(title: '필립스', detail: '다리미', isUse: false),
          MenuItem(title: '브라운', detail: '면도기', isUse: false),
          MenuItem(title: 'GE', detail: '세탁기', isUse: true),
        ]
    )
  ].asObservable();


  // List 가 아니고 ObservableList 로 해야 된다?
  // @action
  // ObservableList<Menu> get menus => _menus;

  @action
  ObservableList<Menu> getMenus() {
    return _menus;
  }


  // return type 이 ObservableList 는 안된다고 함.
  @action
  Menu? getMenuById(int menuId) {
    return _menus[menuId];
  }

  // return type void 로 할지?
  @action
  void insertMenu(Menu menu) {
    _menus.add(menu);
  }

  @action
  int updateMenuById(int menuId, Menu menu) {
    int menuSize = _menus.length;

    if (menuId > menuSize) {
      return 0;
    }

    _menus[menuId] = menu;
    return 1;
  }

  @action
  int deleteMenuById(int menuId) {
    int menuSize = _menus.length;

    if (menuId > menuSize) {
      return 0;
    }

    _menus.removeAt(menuId);
    return 1;
  }



  @action
  MenuItem? getMenuItemById(int menuId, int menuItemId) {
    List<MenuItem>? _menuItems = _menus[menuId].menuItems;

    return _menuItems?[menuItemId];
  }

  // return type void 로 할지?
  @action
  void insertMenuItem(int menuId, MenuItem menuItem) {
    List<MenuItem>? _menuItems = _menus[menuId].menuItems;

    _menuItems?.add(menuItem);
  }

  @action
  int updateMenuItemById(int menuId, int menuItemId, MenuItem menuItem) {
    int menuSize = _menus.length;

    if (menuId > menuSize) {
      return 0;
    }

    // call by ref. right???
    List<MenuItem>? _menuItems = _menus[menuId].menuItems;
    int? menuItemSize = _menuItems?.length;

    if (menuItemSize == null || menuItemId > menuItemSize) {
      return 0;
    }

    _menuItems?[menuItemId] = menuItem;
    return 1;
  }

  @action
  int toggleMenuItemUseById(int menuId, int menuItemId, bool value) {
    int menuSize = _menus.length;

    if (menuId > menuSize) {
      return 0;
    }

    // call by ref. right???
    List<MenuItem>? _menuItems = _menus[menuId].menuItems;
    int? menuItemSize = _menuItems?.length;

    if (menuItemSize == null || menuItemId > menuItemSize) {
      return 0;
    }

    _menuItems?[menuItemId].isUse = value;
    return 1;
  }

  @action
  int deleteMenuItemById(int menuId, int menuItemId) {
    int menuSize = _menus.length;

    if (menuId > menuSize) {
      return 0;
    }

    // call by ref. right???
    List<MenuItem>? _menuItems = _menus[menuId].menuItems;
    int? menuItemSize = _menuItems?.length;

    if (menuItemSize == null || menuItemId > menuItemSize) {
      return 0;
    }

    _menuItems?.removeAt(menuItemId);
    return 1;
  }




  @action
  int getCurrentMenuId() {
    return _current_menu_id;
  }



  @action
  bool getShowMenuAddFormLocal() {
    return _showMenuAddForm;
  }

  @action
  void toggleShowMenuAddForm() {
    _showMenuAddForm = !_showMenuAddForm;

    print('_showMenuAddForm : ' + _showMenuAddForm.toString());
  }


  // general:-------------------------------------------------------------------
  void init() async {
    // getting current language from shared preference
    // if (_repository.currentTitle != null) {
    //   _locale = _repository.currentTitle!;
    // }
  }

  // dispose:-------------------------------------------------------------------
  @override
  dispose() {}
}
