import 'package:pocketbook/repo.dart';

class Myservices {
  late Repository _repository;
  Myservices() {
    _repository = Repository();
  }

  insertBudgetService(myBudget) async {
    print('INSERT SUCCESS');
    return await _repository.insertBudget("income", myBudget.MyBudgetMap());
  }

  historyGetAllBudget() async {
    return await _repository.selectMyBudget("income");
  }

  deletedatabudgetservices(budgetid) async {
    return await _repository.deleteEntryFrombudget("income", budgetid);
  }

  fetchDataBudgetServices(monthname) async {
    return await _repository.fetchEntryByMonth("income", monthname);
  }
}
