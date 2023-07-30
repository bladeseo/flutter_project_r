class Menu {
  int? userId;
  int? id;
  String? title;
  String? body;

  Menu({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory Menu.fromMap(Map<String, dynamic> json) => Menu(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toMap() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
  
}
