// https://dummyjson.com/carts
class Menu {
  // int? userId;
  int? id;
  String? title;
  int? price;
  // String? body;

  Menu({
    // this.userId,
    this.id,
    this.title,
    this.price,
    // this.body,
  });

  factory Menu.fromMap(Map<String, dynamic> json) => Menu(
        // userId: json["userId"],
        id: json["id"],
        title: json["title"],
        price: json["price"],
        // body: json["body"],
      );

  Map<String, dynamic> toMap() => {
        // "userId": userId,
        "id": id,
        "title": title,
        "price": price,
        // "body": body,
      };
  
}
