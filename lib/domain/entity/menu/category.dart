import 'package:boilerplate/domain/entity/menu/menu_item.dart';

class Category {
  int? id;

  String title;

  String? detail;

  String? bgColor;

  String? selectMethod;


  // final List<MenuItem>? menuItems;

  List<MenuItem>? menuItems;


  Category({
    required this.title,
    // this.menuItems,
  });

  
  // to-do
  // rest api 등으로 받아서 local 에 category 생성하는 경우
  // menuItems 를 잘 나눠서 parsing 해얄 듯

  /*
  factory Category.fromJson(List<dynamic> json) {
    List<MenuItem> menuItems = <MenuItem>[];
    menuItems = json.map((menuItem) => MenuItem.fromMap(menuItem)).toList();

    return Category(
      menuItems: menuItems,
    );
  }
  */
}
