import 'package:boilerplate/core/stores/error/error_store.dart';

import 'package:boilerplate/utils/dio/dio_error_util.dart';
import 'package:mobx/mobx.dart';

import 'package:boilerplate/domain/entity/menu/menu_list.dart';
import '../../../domain/usecase/menu/get_menu_usecase.dart';

part 'menu_store_rest.g.dart'; // 네이밍 변경시 맞춰서 바꿔줄 것

class MenuStoreRest = _MenuStoreRest with _$MenuStoreRest;

abstract class _MenuStoreRest with Store {
  // constructor:---------------------------------------------------------------
  _MenuStoreRest(this._getMenuUseCase, this.errorStore);

  // use cases:-----------------------------------------------------------------
  final GetMenuUseCase _getMenuUseCase;

  // stores:--------------------------------------------------------------------
  // store for handling errors
  final ErrorStore errorStore;

  // store variables:-----------------------------------------------------------
  static ObservableFuture<MenuList?> emptyMenuResponse =
      ObservableFuture.value(null);

  @observable
  ObservableFuture<MenuList?> fetchMenusFuture =
      ObservableFuture<MenuList?>(emptyMenuResponse);

  @observable
  MenuList? menuList;

  @observable
  bool success = false;

  @computed
  bool get loading => fetchMenusFuture.status == FutureStatus.pending;

  // actions:-------------------------------------------------------------------
  @action
  Future getMenus() async {
    final future = _getMenuUseCase.call(params: null);
    fetchMenusFuture = ObservableFuture(future);

    future.then((menuList) {
      this.menuList = menuList;
    }).catchError((error) {
      errorStore.errorMessage = DioErrorUtil.handleError(error);
    });
  }
}
