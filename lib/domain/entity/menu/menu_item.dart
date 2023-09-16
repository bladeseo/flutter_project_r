class MenuItem {
  int? id;

  String title;

  String? detail;

  bool isUse;

  // Map<String, String>? dictionary;


  MenuItem({
    // required this.id,
    required this.title,
    // required this.detail,
    this.detail,
    required this.isUse,
    // this.dictionary,
  });


  factory MenuItem.fromMap(Map<String, dynamic> json) => MenuItem(
    // id: json["id"],
    title: json["title"],
    detail: json["detail"],
    isUse: json["isUse"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "title": title,
    "detail": detail,
    "isUse": isUse,
  };
}
