import 'package:boilerplate/domain/entity/menu/menu.dart';

class MenuList {
  final List<Menu>? menus;

  MenuList({
    this.menus,
  });

  factory MenuList.fromJson(List<dynamic> json) {
    List<Menu> menus = <Menu>[];
    menus = json.map((menu) => Menu.fromMap(menu)).toList();

    return MenuList(
      menus: menus,
    );
  }
}
