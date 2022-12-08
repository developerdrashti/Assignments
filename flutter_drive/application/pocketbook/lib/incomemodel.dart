class MyBudget {
  int? id;
  String? month;
  int? amount;
  String? created_at;
  int? date;
  int? time;

  MyBudgetMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id ?? null;
    mapping['month'] = month!;
    mapping['amount'] = amount ?? null;
    mapping['date'] = date ?? null;
    mapping['time'] = time ?? null;
    mapping['created_at'] = created_at ?? null;

    return mapping;
  }
}
