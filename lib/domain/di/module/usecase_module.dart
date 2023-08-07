import 'dart:async';

import 'package:boilerplate/domain/repository/post/post_repository.dart';
import 'package:boilerplate/domain/repository/menu/menu_repository_rest.dart';

import 'package:boilerplate/domain/repository/user/user_repository.dart';

import 'package:boilerplate/domain/usecase/post/delete_post_usecase.dart';
import 'package:boilerplate/domain/usecase/post/find_post_by_id_usecase.dart';
import 'package:boilerplate/domain/usecase/post/get_post_usecase.dart';
import 'package:boilerplate/domain/usecase/post/insert_post_usecase.dart';
import 'package:boilerplate/domain/usecase/post/udpate_post_usecase.dart';

import 'package:boilerplate/domain/usecase/menu/delete_menu_usecase.dart';
import 'package:boilerplate/domain/usecase/menu/find_menu_by_id_usecase.dart';
import 'package:boilerplate/domain/usecase/menu/get_menu_usecase.dart';
import 'package:boilerplate/domain/usecase/menu/insert_menu_usecase.dart';
import 'package:boilerplate/domain/usecase/menu/udpate_menu_usecase.dart';

import 'package:boilerplate/domain/usecase/user/is_logged_in_usecase.dart';
import 'package:boilerplate/domain/usecase/user/login_usecase.dart';
import 'package:boilerplate/domain/usecase/user/save_login_in_status_usecase.dart';

import '../../../di/service_locator.dart';

mixin UseCaseModule {
  static Future<void> configureUseCaseModuleInjection() async {
    // user:--------------------------------------------------------------------
    getIt.registerSingleton<IsLoggedInUseCase>(
      IsLoggedInUseCase(getIt<UserRepository>()),
    );
    getIt.registerSingleton<SaveLoginStatusUseCase>(
      SaveLoginStatusUseCase(getIt<UserRepository>()),
    );
    getIt.registerSingleton<LoginUseCase>(
      LoginUseCase(getIt<UserRepository>()),
    );

    // post:--------------------------------------------------------------------
    getIt.registerSingleton<GetPostUseCase>(
      GetPostUseCase(getIt<PostRepository>()),
    );
    getIt.registerSingleton<FindPostByIdUseCase>(
      FindPostByIdUseCase(getIt<PostRepository>()),
    );
    getIt.registerSingleton<InsertPostUseCase>(
      InsertPostUseCase(getIt<PostRepository>()),
    );
    getIt.registerSingleton<UpdatePostUseCase>(
      UpdatePostUseCase(getIt<PostRepository>()),
    );
    getIt.registerSingleton<DeletePostUseCase>(
      DeletePostUseCase(getIt<PostRepository>()),
    );

    // menu:--------------------------------------------------------------------
    getIt.registerSingleton<GetMenuUseCase>(
      GetMenuUseCase(getIt<MenuRepositoryRest>()),
    );
    getIt.registerSingleton<FindMenuByIdUseCase>(
      FindMenuByIdUseCase(getIt<MenuRepositoryRest>()),
    );
    getIt.registerSingleton<InsertMenuUseCase>(
      InsertMenuUseCase(getIt<MenuRepositoryRest>()),
    );
    getIt.registerSingleton<UpdateMenuUseCase>(
      UpdateMenuUseCase(getIt<MenuRepositoryRest>()),
    );
    getIt.registerSingleton<DeleteMenuUseCase>(
      DeleteMenuUseCase(getIt<MenuRepositoryRest>()),
    );
  }
}
