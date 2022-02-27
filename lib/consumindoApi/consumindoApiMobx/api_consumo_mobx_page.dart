import 'package:flutter/material.dart';
import 'package:mobx_widget/mobx_widget.dart';
import 'package:provider/provider.dart';
import 'package:teaching/consumindoApi/consumindoApiMobx/api_controller.dart';
import 'package:teaching/models/post_model.dart';

class ApiConsumoMobxPage extends StatelessWidget {
  const ApiConsumoMobxPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var apiController = Provider.of<ApiControllerMobx>(context, listen: true);
    return Scaffold(
      appBar: AppBar(title: Text("Api com mobx"),),
      body: Padding(padding: EdgeInsets.all(30), 
      child:
        ObserverFuture<List<PostModel>, Exception>( // Use this widget to handle ObservableFuture events
  retry: 2, // It will retry 2 times after the first error event
  autoInitialize: true, // If true, it will call [fetchData] automatically
  fetchData: apiController.getPostsInitial, // VoidCallback
  
  observableFuture: () => apiController.posts,
  onData: (_, data) {
    if(data.length == 0){
      return Center(child: Text('Nenhum post encontrado'),);
    }
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index){
            var post = data[index];
              return Card(
                child: ListTile(
                  title: Text(post.titulo),
                  subtitle: Text(post.conteudo),
                ),
              );
      });
  },
  onError: (_, error) => Text('Erro ao pesquisar os posts'),
  onPending: (_) => Center(child: CircularProgressIndicator(color: Colors.blue,),),
)
       ),
    );
  }
}