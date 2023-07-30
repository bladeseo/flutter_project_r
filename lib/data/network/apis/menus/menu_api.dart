import 'dart:async';

import 'package:boilerplate/core/data/network/dio/dio_client.dart';
import 'package:boilerplate/data/network/constants/endpoints.dart';
import 'package:boilerplate/data/network/rest_client.dart';

import 'package:boilerplate/domain/entity/menu/menu_list.dart';

class MenuApi {
  // dio instance
  final DioClient _dioClient;

  // rest-client instance
  final RestClient _restClient;

  // injecting dio instance
  MenuApi(this._dioClient, this._restClient);

  /// Returns list of post in response
  Future<MenuList> getMenus() async {
    try {
      final res = await _dioClient.dio.get(Endpoints.getMenus);
      return MenuList.fromJson(res.data);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

/// sample api call with default rest client
//  Future<PostsList> getPosts() {
//
//    return _restClient
//        .get(Endpoints.getPosts)
//        .then((dynamic res) => PostsList.fromJson(res))
//        .catchError((error) => throw NetworkException(message: error));
//  }

}
