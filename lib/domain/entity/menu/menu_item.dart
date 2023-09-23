class MenuItem {
  // id 는 삭제시 중간에 빠지는 경우가 생길 수 있음.
  // array 의 index 로.
  // int? id;

  String title;

  String? detail;

  bool isUse;

  // Map<String, String>? dictionary;


  MenuItem({
    // this.id,
    required this.title,
    // required this.detail,
    this.detail,
    required this.isUse,
  });

  /*
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
  */

}
