
import 'package:boilerplate/core/domain/usecase/use_case.dart';

import 'package:boilerplate/domain/entity/menu/menu_list.dart';
import 'package:boilerplate/domain/repository/menu/menu_repository_rest.dart';

class GetMenuUseCase extends UseCase<MenuList, void> {

  final MenuRepositoryRest _menuRepository;

  GetMenuUseCase(this._menuRepository);

  @override
  Future<MenuList> call({required params}) {
    return _menuRepository.getMenus();
  }
}