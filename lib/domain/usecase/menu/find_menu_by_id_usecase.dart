import 'package:boilerplate/core/domain/usecase/use_case.dart';

import 'package:boilerplate/domain/entity/menu/menu_rest.dart';
import 'package:boilerplate/domain/repository/menu/menu_repository_rest.dart';

class FindMenuByIdUseCase extends UseCase<List<MenuRest>, int> {
  final MenuRepositoryRest _menuRepository;

  FindMenuByIdUseCase(this._menuRepository);

  @override
  Future<List<MenuRest>> call({required int params}) {
    return _menuRepository.findMenuById(params);
  }
}
