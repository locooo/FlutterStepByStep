import 'package:mobx/mobx.dart';

// Include generated file
part 'mobx_counter.g.dart';

final LOMobxCounter counter1 = LOMobxCounter();
// This is the class used by rest of your codebase
class LOMobxCounter = _LOMobxCounter with _$LOMobxCounter;

// The store-class
abstract class _LOMobxCounter with Store {
  @observable
  int mobxInt = 0;

  @action
  void mobXincrement() {
    mobxInt++;
  }

  @action
  void mobXdecrement() {
    mobxInt--;
  }

  @action
  void setMobxAppointValue(int value) {
    this.mobxInt = value;
  }
}
