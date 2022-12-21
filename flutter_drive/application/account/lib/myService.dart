import 'package:account/budgetmainpage.dart';
import 'package:account/alltranscation_model.dart';
import 'package:account/mybuget_model.dart';
import 'package:account/myexpence_model.dart';
import 'package:account/repository.dart';

class Myservices {
  late Repository _repository;
  Myservices() {
    _repository = Repository();
  }
  insertexpenceservices(MyExpence myExpence) async {
    print('INSERT SUCCESS');
    return await _repository.insertexpence(
        "my_expence", myExpence.MyExpenceMap());
  }

  insertBudgetService(MyBudget myBudget) async {
    print('INSERT SUCCESS');
    return await _repository.insertBudget("my_budget", myBudget.MyBudgetMap());
  }

  insertSAvings(MySaving _saving) async {
    print('INSERT SUCCESS');
    return await _repository.insertSAvingss("my_saving", _saving.MySavingMap());
  }

  historyGetAllexpence() async {
    return await _repository.selectMyexpence("my_expence");
  }

  historyGetAllsaving() async {
    return await _repository.selectMysaving("my_saving");
  }

  historyGetAllBudget() async {
    return await _repository.selectMyBudget("my_budget");
  }

  deletedataexpenceservices(expenceid) async {
    return await _repository.deleteEntryFromexpence("my_expence", expenceid);
  }

  deletedatasavingservices(savingid) async {
    return await _repository.deleteEntryFromexpence("my_saving", savingid);
  }

  deletedatabudgetservices(budgetid) async {
    return await _repository.deleteEntryFrombudget("my_budget", budgetid);
  }

  fetchDataExpenceServices(titlename) async {
    return await _repository.fetchEntryBytitle("my_expence", titlename);
  }

  fetchDataBudgetServices(monthname) async {
    return await _repository.fetchEntryByMonth("my_budget", monthname);
  }
}
