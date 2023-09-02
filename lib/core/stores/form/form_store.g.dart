// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FormStore on _FormStore, Store {
  Computed<bool>? _$canLoginComputed;

  @override
  bool get canLogin => (_$canLoginComputed ??=
          Computed<bool>(() => super.canLogin, name: '_FormStore.canLogin'))
      .value;
  Computed<bool>? _$canRegisterComputed;

  @override
  bool get canRegister =>
      (_$canRegisterComputed ??= Computed<bool>(() => super.canRegister,
              name: '_FormStore.canRegister'))
          .value;
  Computed<bool>? _$canForgetPasswordComputed;

  @override
  bool get canForgetPassword => (_$canForgetPasswordComputed ??= Computed<bool>(
          () => super.canForgetPassword,
          name: '_FormStore.canForgetPassword'))
      .value;

  late final _$menuTitleAtom =
      Atom(name: '_FormStore.menuTitle', context: context);

  @override
  String get menuTitle {
    _$menuTitleAtom.reportRead();
    return super.menuTitle;
  }

  @override
  set menuTitle(String value) {
    _$menuTitleAtom.reportWrite(value, super.menuTitle, () {
      super.menuTitle = value;
    });
  }

  late final _$menuTitleDetailAtom =
      Atom(name: '_FormStore.menuTitleDetail', context: context);

  @override
  String get menuTitleDetail {
    _$menuTitleDetailAtom.reportRead();
    return super.menuTitleDetail;
  }

  @override
  set menuTitleDetail(String value) {
    _$menuTitleDetailAtom.reportWrite(value, super.menuTitleDetail, () {
      super.menuTitleDetail = value;
    });
  }

  late final _$menuUseAtom = Atom(name: '_FormStore.menuUse', context: context);

  @override
  bool get menuUse {
    _$menuUseAtom.reportRead();
    return super.menuUse;
  }

  @override
  set menuUse(bool value) {
    _$menuUseAtom.reportWrite(value, super.menuUse, () {
      super.menuUse = value;
    });
  }

  late final _$userEmailAtom =
      Atom(name: '_FormStore.userEmail', context: context);

  @override
  String get userEmail {
    _$userEmailAtom.reportRead();
    return super.userEmail;
  }

  @override
  set userEmail(String value) {
    _$userEmailAtom.reportWrite(value, super.userEmail, () {
      super.userEmail = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_FormStore.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$confirmPasswordAtom =
      Atom(name: '_FormStore.confirmPassword', context: context);

  @override
  String get confirmPassword {
    _$confirmPasswordAtom.reportRead();
    return super.confirmPassword;
  }

  @override
  set confirmPassword(String value) {
    _$confirmPasswordAtom.reportWrite(value, super.confirmPassword, () {
      super.confirmPassword = value;
    });
  }

  late final _$successAtom = Atom(name: '_FormStore.success', context: context);

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

  late final _$_FormStoreActionController =
      ActionController(name: '_FormStore', context: context);

  @override
  void setMenuTitle(String value) {
    final _$actionInfo = _$_FormStoreActionController.startAction(
        name: '_FormStore.setMenuTitle');
    try {
      return super.setMenuTitle(value);
    } finally {
      _$_FormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMenuTitleDetail(String value) {
    final _$actionInfo = _$_FormStoreActionController.startAction(
        name: '_FormStore.setMenuTitleDetail');
    try {
      return super.setMenuTitleDetail(value);
    } finally {
      _$_FormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMenuUse(bool value) {
    final _$actionInfo =
        _$_FormStoreActionController.startAction(name: '_FormStore.setMenuUse');
    try {
      return super.setMenuUse(value);
    } finally {
      _$_FormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUserId(String value) {
    final _$actionInfo =
        _$_FormStoreActionController.startAction(name: '_FormStore.setUserId');
    try {
      return super.setUserId(value);
    } finally {
      _$_FormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_FormStoreActionController.startAction(
        name: '_FormStore.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_FormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setConfirmPassword(String value) {
    final _$actionInfo = _$_FormStoreActionController.startAction(
        name: '_FormStore.setConfirmPassword');
    try {
      return super.setConfirmPassword(value);
    } finally {
      _$_FormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateMenuTitle(String value) {
    final _$actionInfo = _$_FormStoreActionController.startAction(
        name: '_FormStore.validateMenuTitle');
    try {
      return super.validateMenuTitle(value);
    } finally {
      _$_FormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateUserEmail(String value) {
    final _$actionInfo = _$_FormStoreActionController.startAction(
        name: '_FormStore.validateUserEmail');
    try {
      return super.validateUserEmail(value);
    } finally {
      _$_FormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePassword(String value) {
    final _$actionInfo = _$_FormStoreActionController.startAction(
        name: '_FormStore.validatePassword');
    try {
      return super.validatePassword(value);
    } finally {
      _$_FormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateConfirmPassword(String value) {
    final _$actionInfo = _$_FormStoreActionController.startAction(
        name: '_FormStore.validateConfirmPassword');
    try {
      return super.validateConfirmPassword(value);
    } finally {
      _$_FormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
menuTitle: ${menuTitle},
menuTitleDetail: ${menuTitleDetail},
menuUse: ${menuUse},
userEmail: ${userEmail},
password: ${password},
confirmPassword: ${confirmPassword},
success: ${success},
canLogin: ${canLogin},
canRegister: ${canRegister},
canForgetPassword: ${canForgetPassword}
    ''';
  }
}

mixin _$FormErrorStore on _FormErrorStore, Store {
  Computed<bool>? _$hasErrorsInLoginComputed;

  @override
  bool get hasErrorsInLogin => (_$hasErrorsInLoginComputed ??= Computed<bool>(
          () => super.hasErrorsInLogin,
          name: '_FormErrorStore.hasErrorsInLogin'))
      .value;
  Computed<bool>? _$hasErrorsInRegisterComputed;

  @override
  bool get hasErrorsInRegister => (_$hasErrorsInRegisterComputed ??=
          Computed<bool>(() => super.hasErrorsInRegister,
              name: '_FormErrorStore.hasErrorsInRegister'))
      .value;
  Computed<bool>? _$hasErrorInForgotPasswordComputed;

  @override
  bool get hasErrorInForgotPassword => (_$hasErrorInForgotPasswordComputed ??=
          Computed<bool>(() => super.hasErrorInForgotPassword,
              name: '_FormErrorStore.hasErrorInForgotPassword'))
      .value;

  late final _$menuTitleAtom =
      Atom(name: '_FormErrorStore.menuTitle', context: context);

  @override
  String? get menuTitle {
    _$menuTitleAtom.reportRead();
    return super.menuTitle;
  }

  @override
  set menuTitle(String? value) {
    _$menuTitleAtom.reportWrite(value, super.menuTitle, () {
      super.menuTitle = value;
    });
  }

  late final _$menuTitleDetailAtom =
      Atom(name: '_FormErrorStore.menuTitleDetail', context: context);

  @override
  String? get menuTitleDetail {
    _$menuTitleDetailAtom.reportRead();
    return super.menuTitleDetail;
  }

  @override
  set menuTitleDetail(String? value) {
    _$menuTitleDetailAtom.reportWrite(value, super.menuTitleDetail, () {
      super.menuTitleDetail = value;
    });
  }

  late final _$menuUseAtom =
      Atom(name: '_FormErrorStore.menuUse', context: context);

  @override
  String? get menuUse {
    _$menuUseAtom.reportRead();
    return super.menuUse;
  }

  @override
  set menuUse(String? value) {
    _$menuUseAtom.reportWrite(value, super.menuUse, () {
      super.menuUse = value;
    });
  }

  late final _$userEmailAtom =
      Atom(name: '_FormErrorStore.userEmail', context: context);

  @override
  String? get userEmail {
    _$userEmailAtom.reportRead();
    return super.userEmail;
  }

  @override
  set userEmail(String? value) {
    _$userEmailAtom.reportWrite(value, super.userEmail, () {
      super.userEmail = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_FormErrorStore.password', context: context);

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$confirmPasswordAtom =
      Atom(name: '_FormErrorStore.confirmPassword', context: context);

  @override
  String? get confirmPassword {
    _$confirmPasswordAtom.reportRead();
    return super.confirmPassword;
  }

  @override
  set confirmPassword(String? value) {
    _$confirmPasswordAtom.reportWrite(value, super.confirmPassword, () {
      super.confirmPassword = value;
    });
  }

  @override
  String toString() {
    return '''
menuTitle: ${menuTitle},
menuTitleDetail: ${menuTitleDetail},
menuUse: ${menuUse},
userEmail: ${userEmail},
password: ${password},
confirmPassword: ${confirmPassword},
hasErrorsInLogin: ${hasErrorsInLogin},
hasErrorsInRegister: ${hasErrorsInRegister},
hasErrorInForgotPassword: ${hasErrorInForgotPassword}
    ''';
  }
}
