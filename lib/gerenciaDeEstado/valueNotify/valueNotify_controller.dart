
import 'package:flutter/widgets.dart';

class ValueNotifyController extends ChangeNotifier{
  int numero = 0;

  void incrementar(){
    numero++;
    notifyListeners();
  }

}