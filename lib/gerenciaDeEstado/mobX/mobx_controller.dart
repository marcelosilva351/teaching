import 'package:mobx/mobx.dart';
part 'mobx_controller.g.dart';

class MobxController = _MobxControllerBase with _$MobxController;

abstract class _MobxControllerBase with Store {
  //O mobX funciona com 3 partes, um observavel que vai estar sendo observado na aplicação, uma ação que vai mudar esse observavel e uma reação dessa ação

  @observable 
  int numero = 0;

  @action 
  incrementar(){
    numero++;
  }
  
}