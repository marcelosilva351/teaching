import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:teaching/models/post_model.dart';

class ApiRepository{

  Future<List<PostModel>> getPosts() async{

    List<PostModel> postsReturn = [];
    var uriParse = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  
    var response = await http.get(uriParse, 
    headers: {
          'Content-type': 'application/json; charset=UTF-8',
    });
    if(response.statusCode == 200){
      var jsonEncodeResponse = jsonDecode(response.body);
      for(var post in jsonEncodeResponse){
        var postAdd = PostModel(post['title'], post['body']);
        postsReturn.add(postAdd);

      }
      return postsReturn;
    }
    throw Exception;
  }
}