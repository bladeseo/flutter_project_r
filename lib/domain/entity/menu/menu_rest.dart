// https://dummyjson.com/carts
class MenuRest {
  // int? userId;
  int? id;
  String? title;
  int? price;
  // String? body;

  MenuRest({
    // this.userId,
    this.id,
    this.title,
    this.price,
    // this.body,
  });

  factory MenuRest.fromMap(Map<String, dynamic> json) => MenuRest(
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
