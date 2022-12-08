class MyBudget {
  int? id;
  String? month;
  int? amount;
  String? created_at;

  MyBudgetMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id ?? null;
    mapping['month'] = month!;
    mapping['amount'] = amount ?? null;
    mapping['created_at'] = created_at ?? null;

    return mapping;
  }
}
