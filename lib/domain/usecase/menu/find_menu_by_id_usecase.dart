import 'package:boilerplate/core/domain/usecase/use_case.dart';

import 'package:boilerplate/domain/entity/menu/menu.dart';
import 'package:boilerplate/domain/repository/menu/menu_repository_rest.dart';

class FindMenuByIdUseCase extends UseCase<List<Menu>, int> {
  final MenuRepositoryRest _menuRepository;

  FindMenuByIdUseCase(this._menuRepository);

  @override
  Future<List<Menu>> call({required int params}) {
    return _menuRepository.findMenuById(params);
  }
}
