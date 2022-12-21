class MySaving {
  int? id;

  String? title;
  int? amount;
  String? type;

  MySavingMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id ?? null;

    mapping['title'] = title!;
    mapping['amount'] = amount ?? null;
    mapping['type'] = type;

    return mapping;
  }
}
