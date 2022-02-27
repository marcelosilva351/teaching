import 'package:flutter/material.dart';
import 'package:teaching/models/post_model.dart';
import 'package:teaching/repositories/api_repository.dart';

class ApiControllerChangeNotify extends ChangeNotifier{

  var apiRepository = ApiRepository();

  Future<List<PostModel>>? postsNotifyChange;

  getPosts(){
    postsNotifyChange = apiRepository.getPosts();
    notifyListeners();
  }


  ApiControllerChangeNotify(){
    getPosts();
  }

}