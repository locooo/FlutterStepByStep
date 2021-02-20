import 'package:scoped_model/scoped_model.dart';

class LOScopedSingleModel extends Model {
  int _countInt = 0;
  int get countInt => _countInt;
  void add() {
    _countInt++;
    notifyListeners();
  }
}
