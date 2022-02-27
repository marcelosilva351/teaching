import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teaching/gerenciaDeEstado/mobX/mobx_page.dart';
import 'package:teaching/gerenciaDeEstado/valueNotify/valueNotify_controller.dart';


//Se tivermos uma classe que herda de ChangeNotify isso nos possibilita separar a logica da tela, o que é recomendado, na programação sempre é bom termos uma função bem definida para tudo 

//Como vamos gerenciar o estado da tela em outro arquivo não precisamos do StatefulWidget podemos usar um Stateless, mas lembra que não tem problema usar o Stateful, ele pode ser bem util principalmente por causa do InitState, ele não consome mais memora que um statelles então não precisa se importar com isso, pouco importa se vai ser Statelles ou Stateful

class ValueNotifierPage extends StatelessWidget {
  const ValueNotifierPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Usando o provider para pegarmos uma dependencia
    var controller = Provider.of<ValueNotifyController>(context, listen: true);
    return Scaffold(
      appBar: AppBar(title: Text('Change notify'),),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(controller.numero.toString())), 
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            controller.incrementar();
          }, child: Text("Incrementar")),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return MobxPage();
            }));
          }, child: Text('MobX'))
        ],
      ),
      
    );
  }
}