import 'package:flutter/widgets.dart';

class LOProviderCounter with ChangeNotifier {
  int _providerCounter = 0;
  int get providerCounter {
    return _providerCounter;
  }

  void providerIncrement() {
    _providerCounter++;
    notifyListeners();
  }
}
