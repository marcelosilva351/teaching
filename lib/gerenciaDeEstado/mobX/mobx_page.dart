import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:teaching/consumindoApi/consumindoApiMobx/api_consumo_mobx_page.dart';
import 'package:teaching/consumindoApi/consumindoCChangeNotify/consumindoApiSetStatePage.dart';
import 'package:teaching/gerenciaDeEstado/mobX/mobx_controller.dart';
//O ValueNotify é a reatividade mais rapida do flutter, é nativa e vai suprir bem a gente, porem quando formos trabalhar com equipes aquilo pode virar uma bagunça de reatividade, então é bom termos um padrão para gerencias nosso estado, nisso temos varias bibliotecas e padrões, bloc, getX, mobx...
//Mobx é uma biblioteca para gerenciarmos os estados da aplicação e se da muito bem com o flutter, principalmente se usarmos o provider para a injeção de dependencia


class MobxPage extends StatelessWidget {
  const MobxPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     //Usando o provider para pegarmos uma dependencia
    var controller = Provider.of<MobxController>(context, listen: true);
    return Scaffold(
      appBar: AppBar(title: Text('MobX'),),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Observer(
           builder:  (context){ 
              return Text(controller.numero.toString());}
              )), 
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            controller.incrementar();
          }, child: Text("Incrementar")),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ApiConsumoChangeNotify();
            }));
          }, child: Text('Consumindo Api com setState')),
           ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ApiConsumoMobxPage();
            }));
          }, child: Text('Consumindo Api com mobX'))
        ],
      ),
      
    );
  }
}