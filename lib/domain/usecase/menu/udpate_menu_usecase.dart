import 'package:boilerplate/core/domain/usecase/use_case.dart';

import 'package:boilerplate/domain/entity/menu/menu_rest.dart';
import 'package:boilerplate/domain/repository/menu/menu_repository_rest.dart';

class UpdateMenuUseCase extends UseCase<int, MenuRest> {
  final MenuRepositoryRest _menuRepository;

  UpdateMenuUseCase(this._menuRepository);

  @override
  Future<int> call({required params}) {
    return _menuRepository.update(params);
  }
}
