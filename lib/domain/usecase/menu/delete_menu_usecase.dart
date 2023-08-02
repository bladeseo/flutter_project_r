import 'package:boilerplate/core/domain/usecase/use_case.dart';

import 'package:boilerplate/domain/entity/menu/menu.dart';
import 'package:boilerplate/domain/repository/menu/menu_repository_rest.dart';

class DeleteMenuUseCase extends UseCase<int, Menu> {
  final MenuRepository _menuRepository;

  DeleteMenuUseCase(this._menuRepository);

  @override
  Future<int> call({required params}) {
    return _menuRepository.delete(params);
  }
}
