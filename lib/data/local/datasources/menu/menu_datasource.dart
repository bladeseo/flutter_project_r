import 'package:boilerplate/core/data/local/sembast/sembast_client.dart';
import 'package:boilerplate/data/local/constants/db_constants.dart';

import 'package:boilerplate/domain/entity/menu/menu.dart';
import 'package:boilerplate/domain/entity/menu/menu_list.dart';

import 'package:sembast/sembast.dart';

class MenuDataSource {
  // A Store with int keys and Map<String, dynamic> values.
  // This Store acts like a persistent map, values of which are Flogs objects converted to Map
  final _menusStore = intMapStoreFactory.store(DBConstants.STORE_NAME);

  // Private getter to shorten the amount of code needed to get the
  // singleton instance of an opened database.
//  Future<Database> get _db async => await AppDatabase.instance.database;

  // database instance
  final SembastClient _sembastClient;

  // Constructor
  MenuDataSource(this._sembastClient);

  // DB functions:--------------------------------------------------------------
  Future<int> insert(Menu menu) async {
    return await _menusStore.add(_sembastClient.database, menu.toMap());
  }

  Future<int> count() async {
    return await _menusStore.count(_sembastClient.database);
  }

  Future<List<Menu>> getAllSortedByFilter({List<Filter>? filters}) async {
    //creating finder
    final finder = Finder(
        filter: filters != null ? Filter.and(filters) : null,
        sortOrders: [SortOrder(DBConstants.FIELD_ID)]);

    final recordSnapshots = await _menusStore.find(
      _sembastClient.database,
      finder: finder,
    );

    // Making a List<Post> out of List<RecordSnapshot>
    return recordSnapshots.map((snapshot) {
      final menu = Menu.fromMap(snapshot.value);
      // An ID is a key of a record from the database.
      menu.id = snapshot.key;
      return menu;
    }).toList();
  }

  Future<MenuList> getMenusFromDb() async {

    print('Loading from database');

    // menu list
    var menusList;

    // fetching data
    final recordSnapshots = await _menusStore.find(
      _sembastClient.database,
    );

    // Making a List<Post> out of List<RecordSnapshot>
    if(recordSnapshots.length > 0) {
      menusList = MenuList(
          menus: recordSnapshots.map((snapshot) {
            final menu = Menu.fromMap(snapshot.value);
            // An ID is a key of a record from the database.
            menu.id = snapshot.key;
            return menu;
          }).toList());
    }

    return menusList;
  }

  Future<int> update(Menu menu) async {
    // For filtering by key (ID), RegEx, greater than, and many other criteria,
    // we use a Finder.
    final finder = Finder(filter: Filter.byKey(menu.id));
    return await _menusStore.update(
      _sembastClient.database,
      menu.toMap(),
      finder: finder,
    );
  }

  Future<int> delete(Menu menu) async {
    final finder = Finder(filter: Filter.byKey(menu.id));
    return await _menusStore.delete(
      _sembastClient.database,
      finder: finder,
    );
  }

  Future deleteAll() async {
    await _menusStore.drop(
      _sembastClient.database,
    );
  }

}
