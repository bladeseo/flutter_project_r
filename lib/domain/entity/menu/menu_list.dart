import 'package:boilerplate/domain/entity/menu/menu.dart';

class MenuList {
  final int? total;

  final List<dynamic>? jsonProducts;
  final List<Menu>? menus;

  MenuList({
    this.total,
    this.jsonProducts,
    this.menus,
  });

  // String & dynamic 의 의미가 아니고
  // String -> dynamic (json obj.) 로 매핑하겠다는 의미인 듯
  factory MenuList.fromJson(Map<String, dynamic> json) {
    int total = 0;
    List<Menu> menus = <Menu>[];

    total = json['total'];

    print('total : ');
    print(total);

    // print('products : ');
    // print(json['products']);

    List<dynamic> jsonProducts = json['products'];

    print('jsonProducts : ');
    print(jsonProducts);

    menus = jsonProducts.map((menu) => Menu.fromMap(menu)).toList();



    return MenuList(
      // total: total,
      menus: menus,
    );
  }

  /*
  factory MenuList.fromJson(List<dynamic> json) {
    List<Menu> menus = <Menu>[];

    total = json.total;
    menus = json.map((products) => Menu.fromMap(products)).toList();

    return MenuList(
      menus: menus,
    );
  }
  */
}
