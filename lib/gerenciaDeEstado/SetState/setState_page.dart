import 'package:flutter/material.dart';
import 'package:teaching/gerenciaDeEstado/valueNotify/valueNotifier_page.dart';


//StatefulWidget é o widget do flutter que vai nos possibilitar mudar o estado da tela, o mais importante dele é o setState e o InitState onde a gente pode por um estado inicial na tela, isso é muito util quando queremos que ao entrar na tela ja seja carregado uma lista de filmes de uma api por exemplo


//O stateFulWidget vai representar nosso widget e o State<> sera o estado do widget
class setStatePage extends StatefulWidget {
  const setStatePage({ Key? key }) : super(key: key);

  @override
  _setStatePageState createState() => _setStatePageState();
}

class _setStatePageState extends State<setStatePage> {
  int numero = 0;

  void Incrementar(){
    numero++;

    setState(() {
    });
  }

  @override
  void initState() {
    print('Carregado antes mesmo de desenhar a tela');
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SetState'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(numero.toString())), 
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            Incrementar();
          }, child: Text("Incrementar")),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ValueNotifierPage();
            }));
          }, child: Text('Separando a logica da view'))
        ],
      ),
      
    );
  }
}