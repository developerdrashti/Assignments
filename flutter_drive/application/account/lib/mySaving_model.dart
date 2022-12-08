class MySaving {
  int? id;
  String? month;
  String? title;
  int? amount;
  int? created_at;

  MySavingMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id ?? null;
    mapping['month'] = month!;
    mapping['title'] = title!;
    mapping['amount'] = amount ?? null;
    mapping['created_at'] = created_at ?? null;

    return mapping;
  }
}
