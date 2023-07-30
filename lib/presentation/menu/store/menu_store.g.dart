// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MenuStore on _MenuStore, Store {
  Computed<bool>? _$loadingComputed;

  @override
  bool get loading => (_$loadingComputed ??=
          Computed<bool>(() => super.loading, name: '_MenuStore.loading'))
      .value;

  late final _$fetchMenusFutureAtom =
      Atom(name: '_MenuStore.fetchMenusFuture', context: context);

  @override
  ObservableFuture<MenuList?> get fetchMenusFuture {
    _$fetchMenusFutureAtom.reportRead();
    return super.fetchMenusFuture;
  }

  @override
  set fetchMenusFuture(ObservableFuture<MenuList?> value) {
    _$fetchMenusFutureAtom.reportWrite(value, super.fetchMenusFuture, () {
      super.fetchMenusFuture = value;
    });
  }

  late final _$menuListAtom =
      Atom(name: '_MenuStore.menuList', context: context);

  @override
  MenuList? get menuList {
    _$menuListAtom.reportRead();
    return super.menuList;
  }

  @override
  set menuList(MenuList? value) {
    _$menuListAtom.reportWrite(value, super.menuList, () {
      super.menuList = value;
    });
  }

  late final _$successAtom = Atom(name: '_MenuStore.success', context: context);

  @override
  bool get success {
    _$successAtom.reportRead();
    return super.success;
  }

  @override
  set success(bool value) {
    _$successAtom.reportWrite(value, super.success, () {
      super.success = value;
    });
  }

  late final _$getMenusAsyncAction =
      AsyncAction('_MenuStore.getMenus', context: context);

  @override
  Future<dynamic> getMenus() {
    return _$getMenusAsyncAction.run(() => super.getMenus());
  }

  @override
  String toString() {
    return '''
fetchMenusFuture: ${fetchMenusFuture},
menuList: ${menuList},
success: ${success},
loading: ${loading}
    ''';
  }
}
