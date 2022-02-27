import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teaching/consumindoApi/consumindoApiMobx/api_controller.dart';
import 'package:teaching/consumindoApi/consumindoCChangeNotify/consumindoApiSetState.dart';
import 'package:teaching/gerenciaDeEstado/SetState/setState_page.dart';
import 'package:teaching/gerenciaDeEstado/mobX/mobx_controller.dart';
import 'package:teaching/gerenciaDeEstado/valueNotify/valueNotify_controller.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //Injeção de dependencia com provider, o multiProvider pode nos dar a injeção de dependencia dos arquivos que vão ter a logica do nosso app
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ValueNotifyController>(create: ((context) => ValueNotifyController())),
        ChangeNotifierProvider<ApiControllerChangeNotify>(create: ((context) => ApiControllerChangeNotify())),

        Provider<ApiControllerMobx>(create: (context) => ApiControllerMobx(),),
        Provider<MobxController>(create: (context) => MobxController(),)
      ],
      child: MaterialApp(home: setStatePage()),
      
    );
  }
}