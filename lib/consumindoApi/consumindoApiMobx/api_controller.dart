import 'package:mobx/mobx.dart';
import 'package:teaching/models/post_model.dart';
import 'package:teaching/repositories/api_repository.dart';
part 'api_controller.g.dart';

class ApiControllerMobx = _ApiControllerMobxBase with _$ApiControllerMobx;

abstract class _ApiControllerMobxBase with Store {
  var apiRepository = ApiRepository();

  @observable 
  ObservableFuture<List<PostModel>>? posts;

  @action 
  getPosts(){
    posts = ObservableFuture(apiRepository.getPosts());
  }


  void getPostsInitial(){
    getPosts();
  }
  
}