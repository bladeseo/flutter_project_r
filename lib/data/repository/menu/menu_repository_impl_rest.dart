import 'dart:async';

import 'package:boilerplate/data/local/constants/db_constants.dart';

import 'package:boilerplate/data/local/datasources/menu/menu_datasource.dart';

import 'package:boilerplate/data/network/apis/menus/menu_api.dart';
import 'package:boilerplate/domain/entity/menu/menu.dart';
import 'package:boilerplate/domain/entity/menu/menu_list.dart';
import 'package:boilerplate/domain/repository/menu/menu_repository_rest.dart';

import 'package:sembast/sembast.dart';

class MenuRepositoryImpl extends MenuRepository {
  // data source object
  final MenuDataSource _menuDataSource;

  // api objects
  final MenuApi _menuApi;

  // constructor
  MenuRepositoryImpl(this._menuApi, this._menuDataSource);

  // Post: ---------------------------------------------------------------------
  @override
  Future<MenuList> getMenus() async {
    // check to see if menus are present in database, then fetch from database
    // else make a network call to get all posts, store them into database for
    // later use
    return await _menuApi.getMenus().then((menusList) {
      menusList.menus?.forEach((menu) {
        // _menuDataSource.insert(menu);
      });

      return menusList;
    }).catchError((error) => throw error);
  }

  @override
  Future<List<Menu>> findMenuById(int id) {
    //creating filter
    List<Filter> filters = [];

    //check to see if dataLogsType is not null
    Filter dataLogTypeFilter = Filter.equals(DBConstants.FIELD_ID, id);
    filters.add(dataLogTypeFilter);

    //making db call
    return _menuDataSource
        .getAllSortedByFilter(filters: filters)
        .then((menus) => menus)
        .catchError((error) => throw error);
  }

  @override
  Future<int> insert(Menu menu) => _menuDataSource
      .insert(menu)
      .then((id) => id)
      .catchError((error) => throw error);

  @override
  Future<int> update(Menu menu) => _menuDataSource
      .update(menu)
      .then((id) => id)
      .catchError((error) => throw error);

  @override
  Future<int> delete(Menu menu) => _menuDataSource
      .update(menu)
      .then((id) => id)
      .catchError((error) => throw error);
}
