import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teaching/consumindoApi/consumindoCChangeNotify/consumindoApiSetState.dart';
import 'package:teaching/models/post_model.dart';


class ApiConsumoChangeNotify extends StatelessWidget {
  const ApiConsumoChangeNotify({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Provider.of<ApiControllerChangeNotify>(context, listen: true);
    return Scaffold(
      appBar: AppBar(title: Text('Consumindo Api ChangeNotify'),
      actions: [IconButton(onPressed: (){controller.getPosts();}, icon: Icon(Icons.refresh, color: Colors.white,))],),
      body: FutureBuilder<List<PostModel>>(
        future: controller.postsNotifyChange,
        builder: (context, snapchot){
          if(!snapchot.hasData){
            return Center(child: CircularProgressIndicator(color: Colors.blue),);
          }
          if(snapchot.hasError){
            return Center(child: Text('Ocorreu um erro ao buscar os posts'),);
          }
          return ListView.builder(
            itemCount: snapchot.data!.length,
            itemBuilder: (context, index){
              var post = snapchot.data![index];
              return ListTile(
                title: Text(post.titulo),
                subtitle: Text(post.conteudo),
              );
            });
        }),
      
    );
  }
}