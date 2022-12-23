class MyBudget {
  int? id;
  String? name;
  int? amount;
  String? mode;
  String? date;
  String? time;

  MyBudgetMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id ?? null;
    mapping['name'] = name!;
    mapping['amount'] = amount ?? null;
    mapping['date'] = date!;
    mapping['time'] = time!;
    mapping['mode'] = mode!;

    return mapping;
  }
}
