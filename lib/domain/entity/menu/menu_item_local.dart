class MenuItemLocal {
  int id;

  /// the country code (IT,AF..)
  String code;

  /// the locale (en, es, da)
  String locale;

  /// the full name of language (English, Danish..)
  String language;

  bool use;

  /// map of keys used based on industry type (service worker, route etc)
  Map<String, String>? dictionary;

  MenuItemLocal({
    required this.id,
    required this.code,
    required this.locale,
    required this.language,
    required this.use,
    this.dictionary,
  });
}
