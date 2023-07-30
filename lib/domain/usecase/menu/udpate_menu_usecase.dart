import 'package:boilerplate/core/domain/usecase/use_case.dart';

import 'package:boilerplate/domain/entity/menu/menu.dart';
import 'package:boilerplate/domain/repository/menu/menu_repository.dart';

class UpdateMenuUseCase extends UseCase<int, Menu> {
  final MenuRepository _menuRepository;

  UpdateMenuUseCase(this._menuRepository);

  @override
  Future<int> call({required params}) {
    return _menuRepository.update(params);
  }
}
