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

  late final _$_MenuStoreLocalActionController =
      ActionController(name: '_MenuStoreLocal', context: context);

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
  String? getTitle() {
    final _$actionInfo = _$_MenuStoreLocalActionController.startAction(
        name: '_MenuStoreLocal.getTitle');
    try {
      return super.getTitle();
    } finally {
      _$_MenuStoreLocalActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
locale: ${locale}
    ''';
  }
}
